---
title: "Microsoft Purview Information Protection labeling overview"
description: "Microsoft Purview Information Protection labeling helps organizations to classify, label, and protect data based on Microsoft 365 Security and Compliance Center Sensitivity Labels."
author: "tommoser"
ms.localizationpriority: medium
ms.prod: "security"
---

# Information Protection overview

Microsoft Purview Information Protection helps organizations to classify, label, and protect data based on [sensitivity](/office365/securitycompliance/sensitivity-labels). 

Organizations use labels to aid:

* Users in understanding the importance of information that is being handled.
* Compliance administrators in discovering where sensitive information lives. 
* Security administrators in deploying data access and data loss prevention policies based on more rich label information.

## Why integrate Microsoft Purview Information Protection? 

### Integrate with the ubiquitous labeling platform, servicing millions of users and devices

More than a million organizations with tens of millions of users use Microsoft Purview Information Protection to classify, label, and protect data.  In addition to Microsoft 365, various data loss prevention (DLP) services, business intelligence platforms, and software-as-a-service (SaaS) solutions have [embraced Microsoft Purview Information Protection](https://www.microsoft.com/security/technology/information-protection) labeling to provide a richer data classification experience. 

### Label information in line-of-business applications

Enterprise developers use Microsoft Purview Information Protection to label and protect sensitive customer information on export from line-of-business applications to ensure the safety of customer information. Connecting your applications to the Microsoft Purview Information Protection ecosystem enables applications to apply, update, and delete [sensitivity labels](/office365/securitycompliance/sensitivity-labels) in your own application data, without the overhead of integrating a full SDK.

## What can I do with Microsoft Purview Information Protection label APIs in Microsoft Graph? 

### Discover labels available to a user or organization

With Microsoft Graph you can access the [sensitivity labels](/graph/api/resources/security-sensitivitylabel) available to a user or the organization. Labels are applied by applications and services to data at rest or in motion, helping users, downstream applications, and services to understand the sensitivity of the information they're handling.

### Understand how to apply labels

By providing information on the existing and desired sensitivity label, the REST API can intelligently inform your application of the [actions](/graph/api/resources/security-informationprotectionaction) that should be taken to correctly apply the label. This includes actions such as [metadata](/graph/api/resources/security-metadataaction) application, [watermark](/graph/api/resources/security-addwatermarkaction) generation, [protection](/graph/api/resources/security-protectbytemplateaction), and more.

### Interpret labels applied to data

Applications consuming information that already has [sensitivity label metadata](/graph/api/resources/security-metadataaction) applied can use the **extractLabel** API to resolve label metadata to a Microsoft Purview Information Protection [sensitivity label](/graph/api/resources/security-sensitivitylabel). Use the label to identify the actions that should be taken by the application when handling or consuming the labeled data. 

## API reference

Looking for the API reference for this service?

- [Microsoft Purview Information Protection API in Microsoft Graph beta](/graph/api/resources/security-sensitivitylabel?view=graph-rest-beta&preserve-view=true)

## Next steps

- Select and try Information Protection labeling sample queries in [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer). Choose **Show more samples** in the column on the left. Use the menu to turn on **Microsoft Purview Information Protection**.
