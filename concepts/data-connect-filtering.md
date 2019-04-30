---
title: "User selection and filtering"
description: "How developers can select the users to extract data for and filter the data returned"
author: "tlenig"
localization_priority: Priority
ms.prod: "data-connect"
---

# User selection and filtering 

Microsoft Graph data connect allows developers to both select the users they wish to extract data for and include filters to limit the data returned to their application. This section outlines the user selction options data connect provides, as well as the filtering supported. 

## User selection 

Data connect developers can execute pipelines on a set of users. The options for user selection are:
- All users within the organization
- Provide up to 10 groups of users within the organization to run on 
- Specify a predicate based on Azure Active Directory user properties against all users in the organization 

Developers specify their user selection in the SourceDataSet of the Azure Data Factory copy activity. To run on a list of groups, add a new field `allowedGroups` under `typeProperties` and set this to a list of up to 10 groups' `Object Ids` separated by commas. If no groups are specified by default data will be extracted for the entire organization. 

To specify a predicate to run on the entire tenant, add a new field `userScopeFilterUri` under `typeProperties` and set this to the predicate. The predicate format is intended to match the query format of Microsoft Graph APIs. For example if you want to limit to users who work in the Finance department, provide `https://graph.microsoft.com/v1.0/users?$filter=Department eq 'Finance'`

Only users within the Office 365 organization being queried are supported. Guest users and non-user mailboxes are not supported, even if they are in the same Office 365 organization being queried.

## Filtering 

Data connect developers can limit the results extracted for the users they query for using DateTime properties. Depending upon the type of data requested, a DateTime filter may be required. The DateTime filter is provided using properties in the SourceDataSet of the Azure Data Factory copy activity. To specify a DateTime filter, add a new field `dateFilterColumn` under `typeProperties` and set this to one of the properties that support filtering in the table below. Next, add a `startTime` and `endTime` which represent the DateTime values that the property will be filtered upon. 

The following datasets require a filter to be provided on one of the corresponding DateTime properties
| Dataset Name                                                   | Properties that support filtering                                           | 
|----------------------------------------------------------------|-----------------------------------------------------------------------------| 
| BasicDataSet_v0.Event_v0<br>BasicDataSet_v0.Event_v1           | CreatedDateTime<br>LastModifiedDateTime                                     | 
| BasicDataSet_v0.Message_v0<br>BasicDataSet_v0.Message_v1       | CreatedDateTime<br>LastModifiedDateTime<br>ReceivedDateTime<br>SentDateTime | 
| BasicDataSet_v0.SentItem_v0<br>BasicDataSet_v0.SentItem_v1     | CreatedDateTime<br>LastModifiedDateTime<br>ReceivedDateTime<br>SentDateTime |

**Note** Pipelines requesting BasicDataSet_v0.CalendarView_v0 also require a DateTime filter, but no `dateFilterColumn` is specified in the SourceDataSet. However, a `startTime` and `endTime` are required and only events that begin after the `startTime` and finish before the `endTime` are provided.

## Next Steps 

Visit the [Azure Data Factory Office 365 connector documentation](https://docs.microsoft.com/en-us/azure/data-factory/connector-office-365) for more information on how to modify the user selected for extractoin and filtering in data connect pipelines. 

  