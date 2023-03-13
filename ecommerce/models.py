from django.db import models

class Producto(models.Model):
    nombre = models.CharField(max_length=100)
    precio = models.DecimalField(max_digits=10, decimal_places=2)
    cantidad = models.IntegerField()
    categoria = models.CharField(max_length=50)
    descripcion = models.CharField(max_length=300)
    class Meta:
        db_table = 'productos'
