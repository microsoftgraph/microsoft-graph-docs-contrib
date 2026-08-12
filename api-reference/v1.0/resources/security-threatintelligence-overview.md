---
title: "Use the Microsoft Graph APIs for Microsoft Threat Intelligence"
description: "The Microsoft Threat Intelligence APIs in Microsoft Graph help organizations conduct threat infrastructure analysis and gather actionable threat intelligence."
author: "prtanej"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: conceptualPageType
ms.date: 07/28/2026
---

# Use the Microsoft Graph APIs for Microsoft Threat Intelligence

Organizations conducting threat infrastructure analysis and gathering threat intelligence can use the Microsoft Threat Intelligence APIs on Microsoft Graph to streamline triage, incident response, threat hunting, vulnerability management, and cyber threat intelligence analyst workflows. These APIs deliver world-class threat intelligence that helps protect your organization from modern cyber threats. You can identify adversaries and their operations, accelerate detection and remediation, and enhance your security investments and workflows.

These threat intelligence APIs allow you to operationalize intelligence found within the UI. This includes finished intelligence in the forms of articles and intel profiles, machine intelligence including indicators of compromise (IoCs) and reputation verdicts, and finally, enrichment data including passive DNS, cookies, components, and trackers.

> [!NOTE]
> The Microsoft Threat Intelligence APIs are available to all customers with a Microsoft Defender XDR and/or Microsoft Sentinel license. No separate license is required to access these APIs.

## Authorization

To call the threat intelligence APIs in Microsoft Graph, your app needs to acquire an access token. For details about access tokens, see [Get access tokens to call Microsoft Graph](/graph/auth/auth-concepts). Your app also needs the appropriate permissions. For more information, see [Threat intelligence permissions](/graph/permissions-reference#threat-intelligence-permissions).

### Required permissions

The following permissions are required to access the Microsoft Threat Intelligence APIs:

| Permission type | Permissions |
|:---|:---|
| Delegated (work or school account) | ThreatIntelligence.Read |
| Application | ThreatIntelligence.Read.All |

In addition, the calling user must have at minimum the **Security Reader** role assigned.

### Tenant verification and risk-based access

Microsoft Threat Intelligence APIs use per-tenant risk-based enforcement. The service evaluates the tenant that makes each request. If a tenant is identified as high risk, requests from that tenant are blocked until the tenant is successfully verified.

The error message for a blocked request indicates the current verification state of the tenant. When available, the message also includes a link to complete tenant verification.

## Common use cases

The threat intelligence APIs fall into a few main categories:

* Written details about a threat or threat actor, such as [article](../resources/security-article.md) and [intelligenceProfile](../resources/security-intelligenceprofile.md).
* Properties about a [host](../resources/security-host.md), such as **hostCookie**, **passiveDns**, or **whois**.

The following table lists some common use cases for the threat intelligence APIs.

| Use cases                               | REST resources                                                      | See also                                                                               |
| :-------------------------------------- | :------------------------------------------------------------------ | :------------------------------------------------------------------------------------- |
| Read articles about threat intelligence. | [article](../resources/security-article.md)                         | [Methods of article](../resources/security-article.md#methods)                         |
| Read information about a host which is currently or was previously available on the internet and that Microsoft Threat Intelligence detected. You can get further details about a host including associated cookies, passive DNS entries, reputation, and more.           | [host](../resources/security-host.md), <br>[hostCookie](../resources/security-hostcookie.md), <br>[passiveDnsRecord](../resources/security-passivednsrecord.md), <br>[hostReputation](security-hostreputation.md)                               | [Methods of host](../resources/security-host.md#methods)                               |
| Read information about web components observed on a **host**.           | [hostComponent](../resources/security-hostcomponent.md)                               | [Methods of hostComponent](../resources/security-hostcomponent.md#methods)                               |
| Read information about cookies observed on a **host**.           | [hostCookie](../resources/security-hostcookie.md)                               | [Methods of hostCookie](../resources/security-hostcookie.md#methods)                               |
| Discover referential host pairs observed about a host. Host pairs include details such as information about HTTP redirections, consumption of CSS or images from a host, and more.           | [hostPair](../resources/security-hostpair.md)                               | [Methods of hostPair](../resources/security-hostpair.md#methods)                               |
| Discover information about ports that Microsoft Threat Intelligence has observed on a **host**, including components on those ports, the number of times that a port has been observed, and what each host port banner response contains.            | [hostPort](../resources/security-hostport.md), <br> [hostPortComponent](../resources/security-hostportcomponent.md), <br>[hostPortBanner](../resources/security-hostportbanner.md) | [Methods of hostPort](../resources/security-hostport.md#methods)                               |
| Read SSL certificate data observered on a host. This data includes information about the SSL certificate and the relationship between the host and the SSL certificate.           | [hostSslCertificate](../resources/security-hostsslcertificate.md), <br> [sslCertificate](../resources/security-sslcertificate.md)                               | [Methods of hostSslCertificate](../resources/security-hostsslcertificate.md#methods)                               |
| Read Internet trackers observed on a **host**.          | [hostTracker](../resources/security-hosttracker.md)                               | [Methods of hosttracker](../resources/security-hosttracker.md#methods)                               |
| Read intelligence profiles about threat actors and common tools of compromise.              | [intelligenceProfile](../resources/security-intelligenceprofile.md), <br>[intelligenceProfileIndicator](../resources/security-intelligenceprofileindicator.md) | [Methods of intelligenceProfile](../resources/security-intelligenceprofile.md#methods) |
| Read passive DNS (PDNS) records about a **host**.           | [passiveDnsRecord](../resources/security-passivednsrecord.md)                               | [Methods of passiveDnsRecord](../resources/security-passivednsrecord.md#methods)                               |
| Read SSL certificate data. This information is standalone from the details about how the SSL certificate relates to a **host**.          | [sslCertificate](../resources/security-sslcertificate.md)                               | [Methods of sslCertificate](../resources/security-sslcertificate.md#methods)                               |
| Read subdomain details for a **host**.          | [subdomain](../resources/security-subdomain.md)                               | [Methods of subdomain](../resources/security-subdomain.md#methods)                               |
| Read details about a vulnerability.      | [vulnerability](../resources/security-vulnerability.md)             | [Methods of vulnerability](../resources/security-vulnerability.md#methods)             |
| Read WHOIS details for a **host**.          | [whoisRecord](../resources/security-whoisrecord.md)                               | [Methods of whoisRecord](../resources/security-whoisrecord.md#methods)                               |


## Next steps

The threat intelligence APIs in Microsoft Graph can help protect your organization from modern cyber threats. To learn more:

- Drill down on the methods and properties of the resources most helpful to your scenario.
- Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
