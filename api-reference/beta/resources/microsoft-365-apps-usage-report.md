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

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Use the Microsoft 365 Apps usage reports to get insights into the usage of Microsoft 365 Apps in your organization.

> **Note:** For details about different report views and names, see [Microsoft 365 Reports in the admin center - Microsoft 365 Apps usage](/microsoft-365/admin/activity-reports/microsoft365-apps-usage).

## Methods

| Method                                                                        | Return Type                                    | Description                                                |
| :---------------------------------------------------------------------------- | :--------------------------------------------- | :--------------------------------------------------------- |
| [Get user detail](../api/reportroot-getm365appuserdetail.md)                  | [report](../resources/intune-shared-report.md) | Get details about the usage of Microsoft 365 Apps by user. |
| [Get user counts](../api/reportroot-getm365appusercounts.md)                  | [report](../resources/intune-shared-report.md) | Get the number of daily unique users by app.               |
| [Get platform user counts](../api/reportroot-getm365appplatformusercounts.md) | [report](../resources/intune-shared-report.md) | Get the number of daily unique users by platform.          |
