#!/bin/bash
BIRTHDATE="Jan 1, 2000"
echo $BIRTHDATE

PRESENTS=10

BIRTHDAY=$(date -d "$BIRTHDATE" +%A)
echo $BIRTHDAY