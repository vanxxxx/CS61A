test = {
  'name': 'Question 1',
  'points': 2,
  'suites': [
    {
      'cases': [
        {
          'code': r"""
          >>> if "--submit" in sys.argv:
          ...     token = OAuthSession().auth()
          ...     submit(export(final_strategy), getsize("final_strategy.py"), PLAYER_NAME, token, lambda x: sys.__stdout__.write(x + "\n"))
          ... else:
          ...     sys.__stdout__.write("Not submitting to leaderboard, run python ok --submit to do so.\n")
          """,
          'hidden': False,
          'locked': False,
          'multiline': False
        }
      ],
      'scored': True,
      'setup': r"""
      >>> from final_strategy import *
      >>> from submit import *
      >>> from auth import *
      >>> from compare_strategies import *
      >>> from os.path import *
      >>> import sys
      """,
      'teardown': '',
      'type': 'doctest'
    }
  ]
}
