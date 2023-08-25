---
title: "Viva Insights dataset for Microsot Graph Data Connect"
description: "Use this dataset to gain insights about top collaborators, meeting and focus hours, and other personal productivity metrics."
author: "rimisra2"
ms.localizationpriority: high
ms.prod: "data-connect"
ms.custom: datasets:dataset-name
---

# Viva Insights dataset for Microsot Graph Data Connect

Microsoft Viva Insights provides scope information and research-based behavioral insights into how an organization gets work done; for example, whether employees maintain work-life balance, how to protect employee well being, and the ways that hybrid work affects the employee experience. To learn more about scopes, see [Use Microsoft Graph Data Connect to define the scope of a dataset](data-connect-users-and-groups.md).

Use the VivaInsightsDataset_Report_v1_[Viva Insights query name] dataset in your Microsoft Graph Data Connect solution to gain insights about top collaborators, meeting and focus hours, and other personal productivity metrics.

## Scenarios

The Viva Insights dataset is designed to help you build solutions that unlock the following scenarios: 

- [Power BI report templates](/viva/insights/advanced/analyst/templates/introduction-to-templates): Includes hybrid workforce experience, impact explorer, manager effectiveness, meeting effectiveness, onboarding and development, recurring meeting audit, ways of working, and wellbeing, balance and flexibility.
- [Custom person queries](/viva/insights/advanced/analyst/person-query-overview): For example, using Viva Insights metrics to understand the relationship between a person’s organizational attributes – like their team, level, or location – and how they use their time. Or when you want to know how one aspect of a person's time use might influence another aspect of their time use.
- [Customer meeting queries](/viva/insights/advanced/analyst/meeting-query): For example, using Viva Insights metrics to understand the relationship between different meeting attributes.

## Questions

The following are examples of questions that you can answer with the Viva Insights dataset:

- How does the percentage of recurring meetings vary across teams?
- Do managers with more full-day meetings hold fewer 1:1s?
- What is the relationship between meeting multitasking and after-hours collaboration?
- What percentage of meeting time was comprised of meetings with more than 8 attendees?
- Do recurring meetings tend to be bigger or smaller than other meetings?


## Joining with other datasets

This dataset can be joined with any data set based on join keys that the analyst sets in Viva Insights, such as departments, sellers, external collaborator IDs, and so on.

## Definitions

When you create queries using the Microsoft Viva Insights advanced insights app, you can add the following schema:
-	ObjectID = hashed employee ID
-	Viva Insights metrics: [Advanced insights metric descriptions](/viva/insights/advanced/reference/metrics)

## Notes

Viva Insights has recurring flexible queries that are refreshed weekly every Tuesday, and with data up to the last Saturday of the month (Pacific time zone).

## See also

[Datasets, regions, and sinks supported by Microsoft Graph Data Connect](data-connect-datasets.md)
