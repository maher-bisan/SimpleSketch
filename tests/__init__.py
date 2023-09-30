import sys
from pathlib import Path

sys.path.extend([str(p) for p in [
    Path(__file__).parent.parent # /simple_sketch
    ] if p not in sys.path])
    