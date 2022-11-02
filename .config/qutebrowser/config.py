import dracula.draw

# Load existing settings made via :set
config.load_autoconfig()

dracula.draw.blood(c, {
    'spacing': {
        'vertical': 1,
        'horizontal': 8
    }
})

config.bind('V', 'hint links spawn --detach mpv --force-window yes {hint-url}')
config.bind('<Ctrl-Right>', 'tab-next')
config.bind('<Ctrl-Left>', 'tab-prev')
config.bind('T','config-cycle tabs.show always switching')

config.bind('<Ctrl-1>', 'tab-focus 1')
config.bind('<Ctrl-2>', 'tab-focus 2')
config.bind('<Ctrl-3>', 'tab-focus 3')
config.bind('<Ctrl-4>', 'tab-focus 4')
config.bind('<Ctrl-5>', 'tab-focus 5')
config.bind('<Ctrl-6>', 'tab-focus 6')
config.bind('<Ctrl-7>', 'tab-focus 7')
config.bind('<Ctrl-8>', 'tab-focus 8')
config.bind('<Ctrl-9>', 'tab-focus 9')