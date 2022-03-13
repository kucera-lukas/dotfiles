#!/usr/bin/env python3

# inspired by https://github.com/benmezger/dotfiles/blob/main/dot_ipython/profile_default/startup/start.py

from __future__ import annotations

import json
import time
from datetime import datetime, timedelta
from pprint import pprint
from typing import *


def timeit(func):
    def wrapper(*args, **kwargs):
        start = time.time()
        result = func(*args, **kwargs)
        end = (time.time() - start) * 1000.0  # ms
        print(f"Function {func.__name__} took {end:0.3f} ms")
        return result

    return wrapper


print("assigning print to 'pprint.pprint'")
print = pprint

# easier when pasting json with 'true'/'false' values
true = True
false = False
null = None
