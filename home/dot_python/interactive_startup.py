#!/usr/bin/env python3
from __future__ import annotations

import json
import time
from datetime import datetime
from datetime import timedelta
from pprint import pprint
from timeit import default_timer
from typing import *

P = ParamSpec("P")
R = TypeVar("R")


def timeit(func: Callable[P, R]) -> Callable[P, R]:
    def wrapper(*args: P.args, **kwargs: P.kwargs) -> R:
        start = default_timer()
        result = func(*args, **kwargs)
        end = (default_timer() - start)  # s
        print(f"Function {func.__name__} took {end:0.3f} s")
        return result

    return wrapper


print("assigning print to 'pprint.pprint'")
_print = print
print = pprint

# easier when pasting json with 'true'/'false' and 'null' values
true = True
false = False
null = None
