class Chain(object):

    def __init__(self, path=''):
        self._path = path

    def __getattr__(self, path):
        print (self._path)
        print(path)
        new_path = '%s/%s' % (self, path)
        return Chain(new_path)

    def __str__(self):
        return self._path

    __repr__ = __str__

print    (Chain().status.usr.bin)