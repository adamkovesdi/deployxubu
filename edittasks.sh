#!/bin/bash

exec vim `find -type f -name '*.yml' | grep tasks`
