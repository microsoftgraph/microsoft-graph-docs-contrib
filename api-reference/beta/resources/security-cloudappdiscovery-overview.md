---
title: "Use the cloud app discovery API in Microsoft Graph (preview)"
description: "Learn how to programmatically query information about your discovered SaaS applications using the cloud app discovery API in Microsoft Graph."
author: "mravela"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: conceptualPageType
---

# Use the cloud app discovery API in Microsoft Graph (preview)

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Use the cloud app discovery API in Microsoft Graph to get data and insights across the discovered SaaS apps ecosystem. The cloud app discovery API in Microsoft Graph provides an efficient and reliable way to query information about discovered apps. This makes it easier for you to analyze the risks associated with those apps. 

The cloud app discovery API enables you to do the following:

- Programmatically analyze the risk profile of all discovered apps. 
- Programmatically filter discovered apps by using multiple parameters and filter options. 
- Search asynchronously with support for automation, which is accessible to both users and applications. 

The cloud app discovery API is defined in the OData subnamespace `microsoft.graph.security`.

## Cloud app discovery API use cases

Customers can get all the data available on the discovered apps page via the Microsoft Graph API. The following are some key user scenarios the API supports.  

### List all users who use a specific risky SaaS app  

Identify and list all users who access a particular SaaS application that's deemed risky. Make informed decisions about SaaS apps by gaining comprehensive insights about risky users and taking proactive steps to safeguard the data of your organization. For more information, see [List users](../api/security-discoveredcloudappdetail-list-users.md).

### List all apps that access a specific domain

Discover the complete list of SaaS applications that access a specific domain. Gain clarity and control over your digital ecosystem effortlessly by keeping tabs on apps, users, and devices that access risky domains. For more information, see [cloudAppDiscoveryReport: aggregatedAppsDetails](../api/security-cloudappdiscoveryreport-aggregatedappsdetails.md).

### Access the cloud app catalog information for a specific discovered SaaS app  

Access detailed information from the cloud app catalog for a specific discovered SaaS application. Get access to specific insights into app usage and security risks, enabling effective monitoring and management. Enhance the security and compliance posture of your organization by using comprehensive data about app compliance. For more information, see [Get discoveredCloudAppInfo](../api/security-discoveredcloudappinfo-get.md).

## Next steps

Use the Microsoft Graph cloud app discovery API to get data and insights from the discovered SaaS apps ecosystem. To learn more:

- Explore the resources and methods that are most helpful to your scenario.
- Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
