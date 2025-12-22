#!/bin/bash

# MERGING THE NEW TEMPLATE LINES IN THE TRANSLATION FILE
msgmerge --update --no-fuzzy-matching locale/it/LC_MESSAGES/davinci-helper.po locale/davinci-helper.pot
msgmerge --update --no-fuzzy-matching locale/fr/LC_MESSAGES/davinci-helper.po locale/davinci-helper.pot

# DELETING OLD TRANSLATION LINE UNUSED
msgattrib --no-obsolete locale/it/LC_MESSAGES/davinci-helper.po -o locale/it/LC_MESSAGES/davinci-helper.po
msgattrib --no-obsolete locale/fr/LC_MESSAGES/davinci-helper.po -o locale/fr/LC_MESSAGES/davinci-helper.po
