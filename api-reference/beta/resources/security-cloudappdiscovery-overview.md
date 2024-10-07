---
title: "Use the cloud app discovery API"
description: "Learn how to programmatically query your discovered SaaS applications info using the Microsoft Graph API."
author: "mravela"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: conceptualPageType
---

# Use the cloud app discovery API

Use the cloud app discovery API in Microsoft Graph to get data and insights across the discovered SaaS apps ecosystem. The cloud app discovery API in Microsoft Graph provides an efficient and reliable way to query information about discovered apps. This makes it easier for you to analyze the risks associated with those apps. 

The cloud app discovery API enables you to do the following:

- Programmatically analyze the risk profile of all discovered apps. 
- Programmatically filter discovered apps by using multiple parameters and filter options. 
- Search asynchronously with support for automation, which is accessible to both users and applications. 

## Cloud app discovery API use cases

Customers can get all the data available on the discovered apps page via Microsoft Graph API. The following are some key user scenarios the API supports.  

### List all users who use a specific risky SaaS app  

Identify and list all users accessing a particular SaaS application that's deemed risky. Make informed decisions about SaaS apps by gaining comprehensive insights about risky users and take proactive steps to safeguard your organization's data. 
[See List discovered Cloud App Users](../api/security-discoveredcloudappdetail-list-users.md)

### List all apps accessing a specific domain 

Discover the complete list of SaaS applications that are accessing a specific domain. Gain clarity and control over your digital ecosystem effortlessly by keeping tabs on apps, users, and devices that access risky domains.   
[See Aggregate App Details](../api/security-cloudappdiscoveryreport-aggregatedappsdetails.md)

### Access the cloud app catalog information for a specific discovered SaaS app  

Access detailed information from the cloud app catalog for a specific discovered SaaS application. Get access to specific insights into app usage and security risks, enabling effective monitoring and management. Enhance your organization's security and compliance posture by using comprehensive data about app compliance. 

[See Get App Info](../api/security-discoveredcloudappinfo-get.md)