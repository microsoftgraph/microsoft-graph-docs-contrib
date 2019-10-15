---
title: "Use the Microsoft Graph Search API"
description: " > **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported."
localization_priority: Priority
author: "zhiqing su"
ms.prod: "search"
doc_type: resourcePageType
---

# Use the Microsoft Search query API (preview) 


With Microsoft Search API in Graph, you can search data in Office 365.


## Common use cases 

The Search query API provides a method (/query) to search across your data in Microsoft Search. 

Search requests are executed on behalf of user. Search results are trimmed down to enforce any ACL applied to the items.  

| Use Cases | <p align="center">Rest resource and action</p>| <p align="center">See also</p>|
|:------------------|:---------|:-----------|
|[Search for a specific entityType](https://docs.microsoft.com/azure/security-center/security-center-alerts-type)| <p align="center">/search/query </p> | <p align="center">EntityTypes</p> |
|[Page results](https://docs.microsoft.com/azure/active-directory/identity-protection/playbook) | <p align="center">/search/query</p> | <p align="center">From and Size</p> |
| [Get the most relevant emails](https://docs.microsoft.com/cloud-app-security/monitor-alerts) | <p align="center">/search/query</p> | <p align="center">EnableTopResults</p> |
|[Retrieve selected properties](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/attack-simulations) | <p align="center">/search/query</p> | <p align="center">stored_fieds</p> | <p align="center"> [File issue](https://github.com/microsoftgraph/security-api-solutions/issues/new) </p> |
|[Use KQL in query terms](https://docs.microsoft.com/azure-advanced-threat-protection/understanding-security-alerts#security-alert-categories)| <p align="center">/search/query</p> | <p align="center">searchQueryString</p> |
|[Search external Files](https://docs.microsoft.com/azure/sentinel/quickstart-get-visibility)| <p align="center">/search/query</p> | <p align="center">EntityTypes</p> |
|[Search within a specific contentSource (Indexing API)](https://docs.paloaltonetworks.com/pan-os/9-0/pan-os-web-interface-help/monitor/monitor-logs/log-types.html)| <p align="center">/search/query</p> | <p align="center">contentSources</p> |

## Known limitations

The query API has the following limitations during the preview 

- The service support sending only a single searchRequest 

- A given searchRequest supports passing multiple entityTypes. Currently the only supported combination is driveItem and externalFiles. Other combinations are invalid. 

- ContentSource is currently only applicable when entityType = ExternalItem to define the connection to use. 

- Sorting : the API currently does not expose different ways to sort results.  

     - Message and Event are sorted by date.  

     - DriveItems, ExternalFiles, and ExternalItems are sorted by relevance 
