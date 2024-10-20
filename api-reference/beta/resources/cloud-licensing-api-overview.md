---
title: "Use the cloud licensing API in Microsoft Graph (preview)"
description: "Learn how to use the cloud licensing API to access licenses across different subscriptions."
author: "patrick-starrin"
ms.localizationpriority: medium
ms.subservice: "cloud-licensing"
doc_type: conceptualPageType
---

# Use the cloud licensing API in Microsoft Graph (preview)

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The Microsoft Cloud Licensing platform improves license management by breaking down licenses from various subscriptions into smaller, manageable pools called allotments. The association of licenses to their unique subscriptions enables more granular accounting and reporting for an organization.

The cloud licensing API is defined in the OData subnamespace `microsoft.graph.cloudLicensing`.

## Authentication and permissions

Microsoft Graph controls access to resources via permissions. As a developer, you must specify the permissions you need to access cloud licensing resources. Typically, you specify the permissions in the Microsoft Entra admin center. For more information, see [Microsoft Graph permissions reference](/graph/permissions-reference).

## Common use cases

The following table lists common use cases for the cloud licensing API.

| Use case                    | REST resources                                           |
| :-------------------------- | :------------------------------------------------------- |
| List and get usage rights   | [usageRight](../resources/cloudlicensing-usageright.md)  |

## API design details

The following sections describe design details for the cloud licensing API.

### Usage rights

The [usageRight](../resources/cloudlicensing-usageright.md) entity is designed for client and workload license checks, with relationships structured to flow from the user or group to the **usageRight**.

## Next steps

- Explore the resources and methods that are most helpful to your scenario.
- Try the cloud licensing API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
