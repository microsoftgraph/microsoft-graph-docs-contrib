---
title: "User selection and filtering capabilities in Microsoft Graph Data Connect"
description: "Learn how to use Microsoft Graph Data Connect to select users that you want to extract data for and include filters to limit the data returned."
author: "rimisra2"
ms.localizationpriority: high
ms.subservice: "data-connect"
ms.date: 11/07/2024
---

# User selection and filtering capabilities in Microsoft Graph Data Connect

You can use Microsoft Graph Data Connect to select the users that you want to extract data for and to include filters to limit the data returned. This article describes the user selection options that Data Connect provides and the filtering that it supports.

## User selection

You can run pipelines on a set of users. The following are the options for user selection:

- All users within the organization
- Up to 10 groups of users within the organization
- A set of users based on a predicate consisting of Microsoft Entra user properties

Specify your user selection in the SourceDataSet of the Azure Synapse or Azure Data Factory copy activity. To run on a list of groups, add a new field **allowedGroups** under **typeProperties** and set this to a list of up to 10 groups' **Object Ids** separated by commas. If no groups are specified by default, data is extracted for the entire organization.

To specify a predicate to run on the entire tenant, add a new field **userScopeFilterUri** under **typeProperties** and set this to the predicate. The predicate format should match the query format of Microsoft Graph APIs. For example, if you want to limit the selection to users who work in the Finance department, you can use `https://graph.microsoft.com/v1.0/users?$filter=Department eq 'Finance'`. If you want to limit the selection to one user, you can use `https://graph.microsoft.com/v1.0/users?$filter=mail eq 'contosouser1@contoso.com'`.

Your query only returns users within the Microsoft 365 organization that you're querying. Guest users and non-user mailboxes are not returned.

## Filtering

You can limit the results extracted for your query by using DateTime properties. Depending on the type of data requested, a DateTime filter might be required. The DateTime filter is provided by using properties in the SourceDataSet of the Azure Synapse or Azure Data Factory copy activity. To specify a DateTime filter, add a new field **dateFilterColumn** under **typeProperties** and set this to one of the properties that support filtering in the following table. Next, add a **startTime** and **endTime** that represent the DateTime values that the property is filtered upon.

The following datasets require a filter to be provided on one of the corresponding DateTime properties.

| Dataset name                                               | Properties that support filtering                                           |
| ---------------------------------------------------------- | --------------------------------------------------------------------------- |
| BasicDataSet_v0.Event_v0<br>BasicDataSet_v0.Event_v1       | CreatedDateTime<br>LastModifiedDateTime                                     |
| BasicDataSet_v0.Message_v0<br>BasicDataSet_v0.Message_v1   | CreatedDateTime<br>LastModifiedDateTime<br>ReceivedDateTime<br>SentDateTime |
| BasicDataSet_v0.SentItem_v0<br>BasicDataSet_v0.SentItem_v1 | CreatedDateTime<br>LastModifiedDateTime<br>ReceivedDateTime<br>SentDateTime |

> [!NOTE]
> Pipelines requesting BasicDataSet_v0.CalendarView_v0 also require a DateTime filter, but no **dateFilterColumn** is specified in the SourceDataSet. However, a **startTime** and **endTime** are required, and only events that begin after the **startTime** and finish before the **endTime** are provided.

## Related content

[Data Connect frequently asked questions](data-connect-faq.md)
