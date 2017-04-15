import pyglet
from PIL import Image


class UserInterface:

    def __init__(self, window):
        self.sprites = {}
        self.window = window

    def update_sprites(self, conv_text, emot_text, ident_text, history_text):
        self.sprites['label1'] = pyglet.text.Label(text=conv_text,
                                  font_name='Times New Roman',
                                  font_size=36,
                                  x=self.window.width / 2, y=self.window.height / 2 + 50,
                                  anchor_x='center', anchor_y='center')

        self.sprites['label2'] = pyglet.text.Label(text=emot_text,
                                  font_name='Times New Roman',
                                  font_size=36,
                                  x= self.window.width / 2 - self.window.width / 2.5, y=self.window.height / 2 + self.window.height / 2.5,
                                  anchor_x='center', anchor_y='center')

        self.sprites['label3'] = pyglet.text.Label(text=ident_text,
                                  font_name='Times New Roman',
                                  font_size=36,
                                  x=self.window.width / 2 + self.window.width / 2.5, y=self.window.height / 2 + self.window.height / 2.5,
                                  anchor_x='center', anchor_y='center')

        self.sprites['label4'] = pyglet.text.Label(text=history_text,
                                  font_name='Times New Roman',
                                  font_size=36,
                                  x=self.window.width / 2, y=self.window.height / 2 + self.window.height / 2.5,
                                  anchor_x='center', anchor_y='center')

    def stream_webcam(self, img):
        image_to_save = Image.fromarray(img)
        image_to_save.save("webstream.png")
        webstream_image = pyglet.image.load('webstream.png')

        sprite = pyglet.sprite.Sprite(webstream_image)
        sprite.x = self.window.width / 2 - sprite.width / 2.5
        sprite.y = self.window.height / 2 - sprite.height / 2 - self.window.height / 4
        sprite.scale = 0.75

        self.sprites['image1'] = sprite

    def draw(self):
        self.window.clear()
        for sprite_name, sprite_obj in self.sprites.items():
            sprite_obj.draw()
        self.window.flip()

    def render(self):
        self.draw()
        self.window.dispatch_events()
        self.draw()
        self.window.dispatch_events()