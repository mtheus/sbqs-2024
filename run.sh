#!/usr/bin/env bash



PREFIX=$1'-'

if [ -z "$1" ]
  then
    PREFIX=''
fi

APP='java -jar ../code-maat-1.0.4-standalone.jar '
PARAM='--log '$PREFIX'logfile.log --version-control git '
echo '../'$PREFIX'logfile.log'
cd $1 && git log --pretty=format:'[%h] %aN %ad %s' --date=iso8601 --numstat > '../'$PREFIX'logfile.log'
cd ..

$APP $PARAM --analysis abs-churn --outfile $PREFIX'abs-churn.csv'
$APP $PARAM --analysis age --outfile $PREFIX'age.csv'
$APP $PARAM --analysis author-churn --outfile $PREFIX'author-churn.csv'
$APP $PARAM --analysis authors --outfile $PREFIX'authors.csv'
$APP $PARAM --analysis communication --outfile $PREFIX'communication.csv'
$APP $PARAM --analysis coupling --outfile $PREFIX'coupling.csv'
$APP $PARAM --analysis entity-churn --outfile $PREFIX'entity-churn.csv'
$APP $PARAM --analysis entity-effort --outfile $PREFIX'entity-effort.csv'
$APP $PARAM --analysis entity-ownership --outfile $PREFIX'entity-ownership.csv'
$APP $PARAM --analysis fragmentation --outfile $PREFIX'fragmentation.csv'
$APP $PARAM --analysis identity --outfile $PREFIX'identity.csv'
$APP $PARAM --analysis main-dev --outfile $PREFIX'main-dev.csv'
$APP $PARAM --analysis main-dev-by-revs --outfile $PREFIX'main-dev-by-revs.csv'
$APP $PARAM --analysis messages --outfile $PREFIX'messages.csv'
$APP $PARAM --analysis refactoring-main-dev --outfile $PREFIX'refactoring-main-dev.csv'
$APP $PARAM --analysis revisions --outfile $PREFIX'revisions.csv'
$APP $PARAM --analysis soc --outfile $PREFIX'soc.csv'
$APP $PARAM --analysis summary --outfile $PREFIX'summary.csv'
