#!/bin/bash
.bin/go-tpc tpch prepare -H 127.0.0.1 -P 4000 -D tpch --sf 50  --analyze 