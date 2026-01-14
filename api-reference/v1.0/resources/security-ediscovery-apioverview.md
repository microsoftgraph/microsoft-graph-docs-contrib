---
title: "Use the Microsoft Purview eDiscovery API in Microsoft Graph"
description: "Use the Microsoft Purview eDiscovery APIs to automate repetitive tasks and integrate with their existing eDiscovery tools to build repeatable workflows that industry regulations might require."
ms.localizationpriority: high
author: "pamehra"
ms.subservice: "ediscovery"
ms.date: 11/11/2024
doc_type: conceptualPageType
---

# Use the Microsoft Purview eDiscovery API

The Microsoft Purview APIs for eDiscovery enable organizations to automate repetitive tasks and integrate with their existing eDiscovery tools to build repeatable workflows that industry regulations might require. You can use the eDiscovery APIs to help with your legal needs.

> [!IMPORTANT]
> The Microsoft Purview APIs for eDiscovery are intended for the use of eDiscovery operations for litigation, investigation, and regulatory requests. These APIs shouldn't be used as a substitute for journaling data out of the Microsoft 365 system or any other mass download.
>
> For information about setting up app-only access, see [Set up application authentication](/graph/security-ediscovery-appauthsetup).

> [!NOTE]
> Usage of these APIs may require subscriptions to specific Microsoft offerings and is subject to the [Microsoft APIs Terms of Use](/legal/microsoft-apis/terms-of-use?context=graph%252fcontext).  Upon general availability, Microsoft may require you or your customer to pay additional fees.
The eDiscovery APIs are defined in the OData subnamespace, microsoft.graph.security. The following table shows key entities in the eDiscovery API.

| Name | Type | Use case |
|:---|:---|:---|
| Case | [microsoft.graph.security.ediscoverycase](../resources/security-ediscoverycase.md) | The container for all eDiscovery objects including custodians, holds, searches, review sets, and exports.|
| Case settings |[microsoft.graph.security.ediscoveryCaseSettings](../resources/security-ediscoverycasesettings.md) | The settings associated with the case.|
| Custodian | [microsoft.graph.security.ediscoveryCustodian](../resources/security-ediscoverycustodian.md) | A person and the data they have administrative control over. When custodians are identified, *eDiscovery* can hold, search, cull, and export their data. For details, see [Work with custodians and noncustodial data sources in eDiscovery](/microsoft-365/compliance/managing-custodians).|
| Non custodial data source| [microsoft.graph.security.ediscoveryNoncustodialDataSource](../resources/security-ediscoverynoncustodialdatasource.md) | The data sources to be added to a case without having to associate it to a custodian. When non custodial data sources are identified, eDiscovery can hold, search, cull, and export their data. For details, see [Work with custodians and noncustodial data sources in eDiscovery](/microsoft-365/compliance/managing-custodians).|
| Search | [microsoft.graph.security.ediscoverySearch](../resources/security-ediscoverysearch.md) | Allows you to collect data from the Microsoft 365 live services such as Exchange, SharePoint, and Teams. Source collections can be added to a review set to further cull and eventually export data relevant to your case. For details, see [Collect data for a case in eDiscovery](/microsoft-365/compliance/collecting-data-for-ediscovery).|
| Legal hold| [microsoft.graph.security.ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md) | Content held for litigation and legal purposes. Legal holds shouldn't be confused with or used as retention holds, which are typically used to comply with government or industry regulations. To learn more, see [Manage holds in eDiscovery](/microsoft-365/compliance/managing-holds).|
| Operation | [microsoft.graph.security.caseOperation](../resources/security-caseoperation.md) | Operations which can be performed on a case like adding to review set, applying tags, and so on.|
| Review set | [microsoft.graph.security.ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md) | The static set of electronically stored information collected for use in a litigation, investigation, or regulatory request.|
| Tags | [microsoft.graph.security.ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md) | Used in a review set during review or culling to cull responsive data from nonresponsive data, identify privileged content, or generally aid in the review process. To learn more, see [Tag documents in a review set in eDiscovery](/microsoft-365/compliance/tagging-documents).|
