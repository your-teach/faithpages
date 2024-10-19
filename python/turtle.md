# Turtle

## Импорт
```python
import turtle
pen = turtle.Turtle()
turtle.mainloop()
```

## Движение 

`turtle.forward(distance)`
Двигать черепаху вперёд на указанный distance, в сторону направляется черепахи.

`turtle.backward(distance)`
Переместить черепаху назад на distance, противоположную направлению, в котором движется черепаха. Не меняет направление черепахи.

`turtle.right(angle)`
Повернуть черепаху направо на angle единиц. (Единицы измерения по умолчанию являются градусами, но могут быть установлены с помощью функций degrees() и radians()). Ориентация угла зависит от режима черепахи, см. mode()

`turtle.left(angle)`
Повернуть черепаху налево на angle единиц. (Единицы измерения по умолчанию являются градусами, но могут устанавливаться с помощью функций degrees() и radians()). Ориентация угла зависит от режима черепахи, см. mode()

`turtle.circle(radius, extent=None, steps=None)`
    - radius – число
    - extent – число (или None)
    - steps – целое число (или None)
Нарисовать круг с заданным radius. Центр — это radius единиц слева от черепахи; угол extent определяет, какая часть окружности нарисована. Если extent не указан, нарисовать весь круг. Если extent не является полным кругом, одна конечная точка дуги является текущим положением пера. Провести дугу против часовой стрелки, если radius положительный, в противном случае — по часовой стрелке. Наконец, направление черепахи изменяется на extent.

Поскольку окружность аппроксимируется вписанным правильным многоугольником, steps определяет количество шагов для использования. Если он не указан, он будет рассчитан автоматически. Может использоваться для построения правильных многоугольников.




## Квадрат, треугольник и круг

![](/images//turtle/3figures.png)

```python
import turtle

pen = turtle.Turtle()
pen.up()
pen.backward(50)
pen.down()
pen.forward(100)
pen.left(90)
pen.forward(100)
pen.left(90)
pen.forward(100)
pen.left(90)
pen.forward(100)
pen.right(90)
pen.up()
pen.forward(50)
pen.down()
pen.forward(100)
pen.right(120)
pen.forward(100)
pen.right(120)
pen.forward(100)
pen.left(60)
pen.up()
pen.forward(250)
pen.down()
pen.circle(50, 360)

pen.hideturtle()

turtle.mainloop()
```