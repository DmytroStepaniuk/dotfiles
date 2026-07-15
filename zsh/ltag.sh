#!/bin/bash

# ltag — checkout the latest git tag
ltag() {
  # Get tags sorted by version, descending
  tags=($(git tag --sort=-v:refname))

  if [ ${#tags[@]} -eq 0 ]; then
    echo "You don't have any tags."
  else
    # The latest tag
    latest_tag=${tags[0]}
    echo "Checking out the latest tag: $latest_tag"

    git checkout $latest_tag
  fi
}
