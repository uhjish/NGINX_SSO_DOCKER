# -*- coding: utf-8 -*-
import os
from app import create_app

app = create_app('development')


@app.cli.command()
def test():
    """Runs the unit tests."""
    import unittest
    tests = unittest.TestLoader().discover('tests')
    unittest.TextTestRunner(verbosity=2).run(tests)


@app.cli.command()
def fill_db():
    """Fills database with random data.
    By default 10 users, 40 todolists and 160 todos.
    WARNING: will delete existing data. For testing purposes only.
    """
    from utils.fake_generator import FakeGenerator
    FakeGenerator().start()  # side effect: deletes existing data

if __name__ == "__main__":
    app.run(host='0.0.0.0', port = int(os.environ.get('PORT', 8081)), debug=False)
