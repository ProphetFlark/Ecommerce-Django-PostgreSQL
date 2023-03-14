from django.shortcuts import render
from ecommerce.models import Producto
from django.contrib import messages
from ecommerce.forms import ProductoForm
from django.shortcuts import redirect
from django.db.models import Count
import pandas as pd


def mostrarProductos(request):
    mostrarTodo = Producto.objects.all()
    return render(request, 'index.html', {"datos": mostrarTodo})

def nuevoProducto(request):
    if request.method == 'POST':
        if (request.POST.get('nombre') and request.POST.get('precio') and request.POST.get('cantidad') and request.POST.get('categoria') and request.POST.get('descripcion')):
            guardar = Producto()
            guardar.nombre = request.POST.get('nombre')
            guardar.precio= request.POST.get('precio')
            guardar.cantidad= request.POST.get('cantidad')
            guardar.categoria= request.POST.get('categoria')
            guardar.descripcion= request.POST.get('descripcion')
            guardar.save()
            messages.success(request, "Producto "+ guardar.nombre + " guardado correctamente")
            return render(request, 'new.html')
    else:
        return render(request, 'new.html')
    
def EditarProducto(request, id):
    Editar = Producto.objects.get(id=id)
    return render(request, 'edit.html', {"Producto": Editar})

def actualizarProducto(request, id):
    ActualizarProducto = Producto.objects.get(id=id)
    form = ProductoForm(request.POST, instance=ActualizarProducto)
    if form.is_valid():
        form.save()
        messages.success(request, "Producto actualizado correctamente")
        return render(request, 'edit.html', {"Producto":ActualizarProducto})
    
def EliminarProducto(request, id):
    Eliminar = Producto.objects.get(id=id)
    Eliminar.delete()
    return redirect('/')
# https://source.unsplash.com/320x320/?television

def chart_producto(request):
    categoria = Producto.objects.values('categoria').annotate(cantidad=Count('categoria')).order_by()
    df = pd.DataFrame(categoria)
    df1 = df.cantidad.tolist()
    df=df['categoria'].tolist()
    mydict={
        'df': df,
        'df1': df1
    }
    return render(request, 'graphics.html', context=mydict)