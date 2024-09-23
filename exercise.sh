#!/bin/bash
exercism download --track=elixir --exercise=$1
git add $1
git commit -m "feat: $1 assignment"
cd $1
