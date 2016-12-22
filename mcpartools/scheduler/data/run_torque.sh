#!/usr/bin/env bash

# Exit immediately if a simple command exits with a non-zero status.
set -e

# Run individual jobs
{workspace_dir:s}/job_`printf %04d $PBS_ARRAYID`/run.sh