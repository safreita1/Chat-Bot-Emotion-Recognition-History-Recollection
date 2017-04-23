import pyglet
from PIL import Image
from scipy.misc import toimage

# class UserInterface:
#     window = None
#     conversation_text = None
#     emotion_text = None
#     identity_text = None
#     sprite = None
#
#     def __init__(self):
#         self.window = pyglet.window.Window(fullscreen=True)
#
#     def display_background(self, conv_text, emot_text, ident_text):
#         # Load a background image
#         background_image = pyglet.image.load('black_background.png')
#
#         self.sprite = pyglet.sprite.Sprite(background_image)
#
#         self.conversation_text = pyglet.text.Label(text=conv_text,
#                                   font_name='Times New Roman',
#                                   font_size=36,
#                                   x=self.window.width // 2, y=self.window.height // 2,
#                                   anchor_x='center', anchor_y='center')
#
#         self.emotion_text = pyglet.text.Label(text=emot_text,
#                                   font_name='Times New Roman',
#                                   font_size=36,
#                                   x= self.window.width / 2 - self.window.width / 2.5, y=self.window.height / 2 + self.window.height / 2.5,
#                                   anchor_x='center', anchor_y='center')
#
#         self.identity_text = pyglet.text.Label(text=ident_text,
#                                   font_name='Times New Roman',
#                                   font_size=36,
#                                   x=self.window.width / 2 + self.window.width / 2.5, y=self.window.height / 2 + self.window.height / 2.5,
#                                   anchor_x='center', anchor_y='center')
#
#     def render(self):
#         self.window.clear()
#         #self.sprite.draw()
#         self.conversation_text.draw()
#         self.emotion_text.draw()
#         self.identity_text.draw()
#         self.window.flip()
#
#
#
#
# user_interface = UserInterface()
# user_interface.display_background("hi", "text", "text")
# user_interface.render()
# user_interface.window.dispatch_event()
# user_interface.render()
# user_interface.window.dispatch_event()
# testVar = raw_input("Ask user for something.")



    # def update_web_stream():
    #     # Load a background image
    #     background_image = pyglet.image.load('black_background.png')
    #
    #     sprite = pyglet.sprite.Sprite(background_image)
    #
    # display_background("Hi how are you doing today?", "Emotion: Happy", "User: Scott")


class UserInterface():
    def __init__(self, window):
        self.sprites = {}
        self.window = window

    def update_sprites(self, conv_text, emot_text, ident_text):
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



# win = UserInterface(pyglet.window.Window(fullscreen=True))
# win.update_sprites("Listening...", "test", "test")
# win.stream_webcam()
# win.render()
# raw_input("Press Enter to continue...")
