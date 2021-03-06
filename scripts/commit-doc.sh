#!/bin/sh

set -eux

FOLDER=5.x.x
BRANCH=gh-pages

move_docs_to_aws_sdk_swift_docs() {
    REVISION_HASH=$(git rev-parse HEAD)
    COMMIT_MSG="Documentation for https://github.com/swift-aws/aws-sdk-swift/tree/$REVISION_HASH"
    if [ -n "$1" ]; then
        COMMIT_MSG=$1
    fi

    git clone https://github.com/swift-aws/aws-sdk-swift-docs -b "$BRANCH"
    
    cd aws-sdk-swift-docs
    # copy contents of docs to docs/current replacing the ones that are already there
    rm -rf "$FOLDER"
    mv ../docs/ "$FOLDER"/
    # commit
    git add --all "$FOLDER"
    git commit -m "$COMMIT_MSG"
    git push
    
    cd ..
    rm -rf aws-sdk-swift-docs
}

COMMIT_MSG=""
while getopts 'm:' option
do
    case $option in
        m) COMMIT_MSG=$OPTARG ;;
        *) usage ;;
    esac
done

move_docs_to_aws_sdk_swift_docs "$COMMIT_MSG"
