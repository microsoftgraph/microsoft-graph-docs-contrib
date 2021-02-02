---
title: "Use the Microsoft Graph eDiscovery API"
description: "The Microsoft 365 eDiscovery APIs provide functionality for organizations to automate repetitive tasks and integrate with their existing eDiscovery tools to build a repeatable workflows that might be required based on industry regulations. You can use the eDiscovery APIs to help with your legal needs."
localization_priority: Priority
author: "mahage-msft"
ms.prod: "ediscovery"
doc_type: conceptualPageType
---

# Use the Microsoft Graph eDiscovery API

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The Microsoft Graph APIs for eDiscovery provide functionality for organizations to automate repetitive tasks and integrate with their existing eDiscovery tools to build repeatable workflows that might be required based on industry regulations. You can use the eDiscovery APIs to help with your legal needs.

> [!IMPORTANT]
> The Microsoft Graph APIs for eDiscovery are intended for the use of eDiscovery operations for Litigation, Investigation and regulatory requests. These APIs should not be used as a substitute for journaling data out of the Microsoft 365 system or any other mass download.

> [!NOTE]
> During the preview, usage of these APIs may require subscriptions to specific Microsoft offerings and is subject to the [Microsoft APIs Terms of Use](/legal/microsoft-apis/terms-of-use?context=graph%252fcontext).  Upon general availability, Microsoft may require you or your customer to pay additional fees.
>
> Currently, the eDiscovery APIs in Microsoft Graph only work with Advanced eDiscovery cases.

The eDiscovery API is defined in the OData subnamespace, microsoft.graph.ediscovery.

The Microsoft Graph API includes the following key entities.

| Name | Type       | Use case |
|:-|:-|:-|
| Case | [case](ediscovery-case.md) | eDiscovery cases are the container for all eDiscovery objects including custodians, holds, searches, review set and exports. |
| Custodian | [custodian](ediscovery-custodian.md) | Custodians are a person and data they have administrative control over. Once custodians are identified, *Advanced eDiscovery* can hold, search, cull and export their data. See [Work with custodians and non-custodial data sources in Advanced eDiscovery](https://docs.microsoft.com/microsoft-365/compliance/managing-custodians) to learn more.|
| Legal hold | [legalHold](ediscovery-legalhold.md) | eDiscovery legal holds are used to hold content for litigation and legal purposes and should not be confused or used as retention holds, which are typically used to comply with government or industry regulations. To learn more about legal holds in Microsoft 365 Advanced eDiscovery, see [Manage holds in Advanced eDiscovery](https://docs.microsoft.com/microsoft-365/compliance/managing-holds).|
| Review set| [reviewSet](ediscovery-reviewset.md) | eDiscovery review sets are static set of electronically stored information collected for use in a litigation, investigation or regulatory request. |
| Review set query | [reviewSetQuery](ediscovery-reviewsetquery.md) | eDiscovery review set queries are used to discover, cull, review and tag [ESI](https://en.wikipedia.org/wiki/Electronically_stored_information_(Federal_Rules_of_Civil_Procedure)) with the ultimate goal of production to the requestor or opposing counsel.|
| Source collection| [sourcecollection](ediscovery-sourcecollection.md)| Source collections, commonly known as searches, allow you to collect data from the M365 live services such as Exchange, SharePoint, and Teams. Source collections can be added to a review set to further cull and eventually export data relevant to you case. See [Collect data for a case in Advanced eDiscovery](https://docs.microsoft.com/microsoft-365/compliance/collecting-data-for-ediscovery) to learn more.|
| Tags | [tag](ediscovery-tag.md) | Tags can be used in a review set during review or culling to cull responsive data from non-responsive data, identify privileged content or generally aid in the review process.  To learn more about tags, see [Tag documents in a review set in Advanced eDiscovery](https://docs.microsoft.com/microsoft-365/compliance/tagging-documents).|
