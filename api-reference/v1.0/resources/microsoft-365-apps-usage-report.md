---
title: "Microsoft 365 Apps usage reports"
description: "Use the Microsoft 365 Apps usage reports to get insights into the usage of Microsoft 365 Apps in your organization."
ms.localizationpriority: medium
ms.prod: "reports"
author: "sarahwxy"
doc_type: conceptualPageType
---

# Microsoft 365 Apps usage reports

Namespace: microsoft.graph

Use the Microsoft 365 Apps usage reports to get insights into the usage of Microsoft 365 Apps in your organization.

> **Note:** For details about different report views and names, see [Microsoft 365 Reports in the admin center - Microsoft 365 Apps usage](/microsoft-365/admin/activity-reports/microsoft365-apps-usage).

## Methods
| Function                                                                      | CSV return type | JSON return type | Description                                                |
|:------------------------------------------------------------------------------|:----------------|:-----------------|:-----------------------------------------------------------|
| [Get user detail](../api/reportroot-getm365appuserdetail.md)                  | Stream          | Stream           | Get details about the usage of Microsoft 365 Apps by user. |
| [Get user counts](../api/reportroot-getm365appusercounts.md)                  | Stream          | Stream           | Get the number of daily unique users by app.               |
| [Get platform user counts](../api/reportroot-getm365appplatformusercounts.md) | Stream          | Stream           | Get the number of daily unique users by platform.          |
