---
title: "Migrate Exchange Web Services (EWS) apps to Microsoft Graph"
description: "Because there is no longer an active investment in EWS APIs for Exchange Online, you can migrate your EWS apps that access Exchange Online to Microsoft Graph."
author: "sumithra-maran"
ms.localizationpriority: medium
ms.subservice: "exchange"
doc_type: conceptualPageType
ms.date: 07/11/2025
---

# Migrate Exchange Web Services (EWS) apps to Microsoft Graph

[Exchange Web Services (EWS)](/exchange/client-developer/exchange-web-services/explore-the-ews-managed-api-ews-and-web-services-in-exchange) is a legacy protocol that has been in use since Exchange Server 2007. In August 2018, [Microsoft announced](https://techcommunity.microsoft.com/t5/exchange-team-blog/upcoming-changes-to-exchange-web-services-ews-api-for-office-365/ba-p/608055) that there won't be any active investment in EWS APIs for Exchange Online. We recommend that you migrate your EWS apps that access Exchange Online to Microsoft Graph.

> [!Important]
> Microsoft Graph is not supported for Exchange on-premises. This content applies to Exchange Online and hybrid deployments only.

## Why use Microsoft Graph?

Microsoft Graph offers improvements over EWS in terms of security, simplicity, and efficiency. Switch to Microsoft Graph to take advantage of these improvements, all through one single endpoint.

### Security

Microsoft Graph has stricter security and governance policies with OAuth and [granular scoping to limit data access](/graph/permissions-reference) in a mailbox as opposed to the all or none access model in EWS.

### Developer simplicity

Microsoft Graph offers [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer) to discover and test APIs easily and quickly, [SDKs](/graph/sdks/sdks-overview) in different programming languages​, and an active developer community.

### REST efficiency

Microsoft Graph APIs are REST-based, where EWS APIs are SOAP-based. The advantages of using REST-based protocols include faster JSON serialization and lower network usage.

## Related content

- [Authentication differences between EWS and Microsoft Graph](migrate-exchange-web-services-authentication.md)
- [EWS to Microsoft Graph API mappings](migrate-exchange-web-services-api-mapping.md)
- [Migrate from EWS to Microsoft Graph with GitHub Copilot](https://aka.ms/migTut2)
