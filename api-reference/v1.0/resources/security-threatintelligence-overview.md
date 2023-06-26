---
title: "Use the Microsoft Graph APIs for Microsoft Defender Threat Intelligence"
description: "The threat intelligence APIs in Microsoft Graph lets apps manage administrator tasks for organizations."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: conceptualPageType
---

# Use the Microsoft Graph APIs for Microsoft Defender Threat Intelligence

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

Organizations conducting threat infrastructure analysis and gathering threat intelligence can use [Microsoft Defender Threat Intelligence](/defender/threat-intelligence/what-is-microsoft-defender-threat-intelligence-defender-ti) (Defender TI) to streamline triage, incident response, threat hunting, vulnerability management, and cyber threat intelligence analyst workflows. In addition, you can use the APIs exposed by Microsoft Defender Threat Intelligence on Microsoft Graph to deliver world-class threat intelligence that helps protect your organization from modern cyber threats. You can identify adversaries and their operations, accelerate detection and remediation, and enhance your security investments and workflows.

These threat intelligence APIs allow you to operationalize intelligence found within the UI. This includes finished intelligence in the forms of articles and intel profiles, machine intelligence including indicators of compromise (IoCs) and reputation verdicts, and finally, enrichment data including passive DNS, cookies, components, and trackers.

## Authorization

To call the threat intelligence APIs in Microsoft Graph, your app needs to acquire an access token. For details about access tokens, see [Get access tokens to call Microsoft Graph](/graph/auth/auth-concepts). Your app also needs the appropriate permissions. For more information, see [Threat intelligence permissions](/graph/permissions-reference#threat-intelligence-permissions).

## Common use cases

The following describes some common use cases for the threat intelligence APIs.

| Use cases                               | REST resources                                                      | See also                                                                               |
| :-------------------------------------- | :------------------------------------------------------------------ | :------------------------------------------------------------------------------------- |
| Read information about a host           | [host](../resources/security-host.md)                               | [Methods of host](../resources/security-host.md#methods)                               |
| Read articles about threat intelligence | [article](../resources/security-article.md)                         | [Methods of article](../resources/security-article.md#methods)                         |
| Read intelligence profiles              | [intelligenceProfile](../resources/security-intelligenceprofile.md) | [Methods of intelligenceProfile](../resources/security-intelligenceprofile.md#methods) |
| Read details about a vulnerability      | [vulnerability](../resources/security-vulnerability.md)             | [Methods of vulnerability](../resources/security-vulnerability.md#methods)             |

## What's new

Find out about the [latest new features and updates](/graph/whats-new-overview) for this API set.

## Next steps

The threat intelligence APIs in Microsoft Graph can help protect your organization from modern cyber threats. To learn more:

- Drill down on the methods and properties of the resources most helpful to your scenario.
- Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
