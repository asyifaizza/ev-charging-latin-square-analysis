# EV Charging Energy Consumption Using Latin Square Design

Statistical analysis of electric vehicle charging sessions using **Latin Square Design (LSD)**, with comparisons against Completely Randomized Design (CRD) and Randomized Complete Block Designs (RCBD).

## Overview

This project applies experimental-design methodology to observational EV charging data to study whether charging-power level is associated with energy consumption.

The analysis uses:

- Charging power as the treatment factor
- Time of day as one blocking factor
- Charging-station location type as another blocking factor
- Energy consumption as the response variable

The project compares several design strategies before applying a 4×4 Latin Square Design.

## Research Question

How does charging-power level relate to energy consumption when time block and charging-station location are incorporated into the design?

## Methodology

The analysis follows these main stages:

1. Data cleaning and exploratory analysis
2. Charging-power calculation
3. Construction of time-of-day blocks
4. Construction of charging-station location blocks
5. Definition of four charging-power treatment levels:
   - Low
   - Standard
   - High
   - Ultra
6. Construction of a 4×4 Latin Square
7. Comparison of CRD, RCBD, and Latin Square Design
8. ANOVA
9. Assumption checks
10. Post-hoc analysis using Tukey HSD and Fisher LSD
11. Visualization of energy consumption across treatment levels

## Important Interpretation Note

The original dataset consists of observational EV charging records. The Latin Square Design is therefore used as an analytical design framework applied to the available observations; this should not be interpreted as a randomized real-world EV charging experiment.

## Key Findings

According to the accompanying analysis report:

- Charging-power treatment has a statistically significant effect on energy consumption at the reported significance level (`p = 0.034`).
- The reported model did not find statistically significant effects for the time and location blocking factors.
- The project compares CRD, RCBD, and Latin Square Design to examine how blocking affects the analysis.

For the complete numerical output, assumptions, ANOVA tables, and post-hoc results, see `reports/final-report.pdf`.

## Dataset

The project contains **148,136 EV charging records** in the supplied dataset.

The source data include charging-session information such as station/location information, timing, charging duration, and energy consumption.

## Repository Structure

```text
ev-charging-latin-square-analysis/
├── README.md
├── .gitignore
├── R/
│   └── analysis.R
├── data/
│   └── electric-vehicle-charging-data.csv
└── reports/
    └── final-report.pdf
```

## Reproducibility

The main analytical report is included in `reports/final-report.pdf`.

The R directory contains a cleaned project entry point and documentation of the analytical workflow. Exact reported results should be read from the accompanying report because the supplied project package did not contain a standalone original R script.

## Tools

- R
- Experimental Design
- ANOVA
- Latin Square Design
- Completely Randomized Design
- Randomized Complete Block Design
- Tukey HSD
- Fisher LSD
- Data Visualization

## Project Context

This repository is a portfolio-oriented reconstruction of an academic Design of Analysis project. Course/group/student-specific identifiers have been removed from the repository naming and presentation.
