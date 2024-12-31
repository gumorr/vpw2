import os

def apply(config, args):
    basename = 'vpw2'

    config['baseimg'] = 'baserom.z64'
    config['myimg'] = f'{basename}_z.z64'
    config['mapfile'] = f'build/{basename}.map'
    config['source_directories'] = ['src', 'include']
