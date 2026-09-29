# EV Charging Energy Consumption Using Latin Square Design

Statistical analysis of electric vehicle charging sessions using **Latin Square Design (LSD)**, with comparisons against Completely Randomized Design (CRD) and Randomized Complete Block Designs (RCBD).

## About the Project

This project was developed as a **group assignment for the Design and Analysis of Experiments (DAE)** course at BINUS University.

The analysis applies experimental-design methodology to observational EV charging data to study the relationship between charging-power level and energy consumption, while incorporating time and charging-station location as blocking factors.

## Research Question

How does charging-power level relate to energy consumption when time block and charging-station location are incorporated into the analysis?

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
7. Comparison of:
   - Completely Randomized Design (CRD)
   - Randomized Complete Block Design (RCBD)
   - Latin Square Design (LSD)
8. ANOVA
9. Assumption testing
10. Post-hoc analysis using Tukey HSD and Fisher LSD
11. Visualization of energy consumption across treatment levels

## Key Findings

According to the accompanying analysis report:

- Charging-power treatment has a statistically significant effect on energy consumption at the reported significance level (`p = 0.034`).
- The reported model did not find statistically significant effects for the time and location blocking factors.
- The project compares CRD, RCBD, and Latin Square Design to examine how blocking affects the analysis.

For the complete numerical output, ANOVA tables, assumption tests, and post-hoc results, see `reports/final-report.pdf`.

## Important Interpretation Note

The original dataset consists of observational EV charging records. The Latin Square Design is therefore used as an analytical design framework applied to the available observations; this should not be interpreted as a randomized real-world EV charging experiment.

## Dataset

The supplied dataset contains **148,136 EV charging records**.

The data include charging-session information such as station/location information, timing, charging duration, and energy consumption.

## Project Structure

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

## Team Members

This project was completed as a group assignment by:

| Name | Student ID |
|---|---|
| Ryu Orlando Tamin | 2702215031 |
| Hazel Zaki Adityo | 2702329576 |
| Asyifa Izzatil Isma | 2702374756 |
| Vanessa Santoso | 2702242171 |
| M. Aufa Mumtaza Ibadillah | 2702340162 |
| Amanda Sugito | 2702388433 |

## Course Information

**Course:** Design and Analysis of Experiments  
**Institution:** BINUS University  
**Assignment:** AOL — Group Project  
**Group:** Group 3

## Tools & Methods

- R
- Experimental Design
- Latin Square Design
- Completely Randomized Design
- Randomized Complete Block Design
- ANOVA
- Tukey HSD
- Fisher LSD
- Data Visualization

## Reproducibility

The accompanying analysis report is available in:

```text
reports/final-report.pdf
```

The `R/analysis.R` file provides the cleaned project entry point and documents the analytical workflow.

## Academic Context

This repository presents the group assignment in a portfolio-oriented format while preserving the original analytical scope and findings. Course-specific and group-specific information is retained here to acknowledge the original academic context of the project.
