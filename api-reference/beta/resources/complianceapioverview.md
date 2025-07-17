---
title: "Use the Microsoft Graph compliance and privacy APIs"
description: "The Microsoft Graph compliance and privacy APIs provide a unified interface and schema to integrate with solutions available in the Microsoft Purview compliance portal from Microsoft and ecosystem partners. This can help customers streamline their compliance and privacy operations to better manage and monitor their data, protect information, minimize insider risk, perform legal and internal investigations, and comply with legal or regulatory standards."
ms.localizationpriority: high
author: "mahage-msft"
ms.subservice: "compliance"
doc_type: conceptualPageType
ms.date: 06/11/2024
---

# Use the Microsoft Graph compliance and privacy APIs

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The Microsoft Graph compliance and privacy APIs provide a unified interface and schema to integrate with solutions available in the Microsoft Purview compliance portal from Microsoft and ecosystem partners. This can help customers streamline their compliance and privacy operations to better manage and monitor their data, protect information, minimize insider risk, perform legal and internal investigations, and comply with legal or regulatory standards. For more information, see [Microsoft Purview documentation](/microsoft-365/compliance).

Use the Microsoft Graph compliance and privacy APIs to build applications that:

- Automate common tasks in eDiscovery
- Create and manage subject rights requests
- Automate tasks in records management

> [!Note] 
> The compliance APIs are deprecated. Instead, use equivalent API requests from the security endpoints. For more information, see [Microsoft Graph Security API documentation](/graph/api/resources/security-api-overview?view=graph-rest-beta).
> 
## eDiscovery

eDiscovery in Microsoft 365 provides an end-to-end workflow to preserve, collect, review, analyze, and export data that's responsive to your organization's internal and external investigations. Learn more about [Microsoft Purview eDiscovery (Premium)](/microsoft-365/compliance/overview-ediscovery-20).

Explore the [Microsoft 365 eDiscovery APIs](ediscovery-ediscoveryapioverview.md).

## Records management (preview)

Records management in Microsoft Purview enables customers to manage regulatory, legal, and business-critical records across corporate data. It helps organizations manage retention and deletion of data to meet their legal and compliance regulations, and increases efficiency by enabling the regular disposal of items that no longer have to be retained.

For more information, see [Microsoft Purview Records Management](/microsoft-365/compliance/records-management).

The records management API is defined in the OData subnamespace, microsoft.graph.security.
Explore the [Microsoft Purview Records Management APIs](security-recordsManagement-overview.md).

## Subject rights request

Microsoft Priva Subject Rights Requests provides powerful capabilities to help you handle requests from people seeking to manage their personal data within your organization. These requests are sometimes also referred to as data subject requests (DSRs), data subject access requests (DSARs), or consumer rights requests. Microsoft Priva empowers personnel responsible for fulfilling subject rights requests to easily identify data subjects and find their personal information among your organization’s data in Exchange, SharePoint, OneDrive, and Teams. Learn more about [Priva Subject Rights Requests](/microsoft-365/compliance/privacy-management-subject-rights-requests).

Explore the [subject rights request APIs](subjectrightsrequest-subjectrightsrequestapioverview.md).

<!--
## Labels

??? Labels should be moved from security to here.  They are currently under a node called Information protection.
-->
