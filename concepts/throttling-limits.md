---
title: "Microsoft Graph service-specific throttling limits"
description: "Identify the throttling limits for each Microsoft Graph service to apply best practices to manage throttling in your application."
ms.localizationpriority: high
ms.custom: graphiamtop20
ms.subservice: non-product-specific
ms.topic: reference
ms.date: 01/14/2025
#Customer intent: As a developer using Microsoft Graph to access multiple services, I want to understand the throttling limits imposed by each service, so that I can ensure my application stays within the allowed limits and avoids being throttled.
---

# Microsoft Graph service-specific throttling limits

Microsoft Graph concurrently imposes two categories of throttling limits for all API calls: 
- Global limits that apply to all services
- Service-specific limits that apply to individual services

Any request can be evaluated against multiple limits, depending on the scope of the limit (per app across all tenants, per tenant for all apps, per app per tenant, and so on), the request type (GET, POST, PATCH, and so on), and other factors. The first limit to be reached triggers throttling behavior.

The following table indicates the global limits:

| Request type | Per app across all tenants      |
|--------------|---------------------------------|
| Any          | 130,000 requests per 10 seconds |

The rest of this article provides an overview of the service-specific throttling limits for each Microsoft Graph service.

> [!NOTE]
> The specific limits described in this article are subject to change.
>
> In this section, the term *tenant* refers to the Microsoft 365 organization where the application is installed. For a single-tenant application, this tenant can be the same as the one where the application was created; for a multitenant application, it can be a different tenant.

## Assignment service limits

[!INCLUDE [Assignment throttling documentation](../includes/throttling-assignment.md)]

## Bookings service limits

[!INCLUDE [Bookings throttling documentation](../includes/throttling-bookings.md)]

## Cloud communication service limits

[!INCLUDE [Cloud communication throttling documentation](../includes/throttling-cloud-communication.md)]

### Call records limits

[!INCLUDE [Cloud records throttling documentation](../includes/throttling-call-records.md)]

### PSTN call records limits

[!INCLUDE [PSTN call records throttling documentation](../includes/throttling-pstn-calls.md)]

## Excel service limits
  
[!INCLUDE [Excel throttling documentation](../includes/throttling-excel.md)]

## Education service limits

[!INCLUDE [Education rostering APIS throttling documentation](../includes/throttling-education-rostering-apis.md)]

## Files and lists service limits

[!INCLUDE [Files and lists throttling documentation](../includes/throttling-files-and-lists.md)]

## Identity and access reports service limits

[!INCLUDE [Microsoft Entra identity and access logs and reports throttling documentation](../includes/throttling-entra-logs-reports.md)]

## Identity and access service limits

[!INCLUDE [Identity and access throttling documentation](../includes/throttling-identity-and-access.md)]

## Identity and access data policy operation service limits

[!INCLUDE [Identity and access data policy operation documentation](../includes/throttling-datapolicy-operation.md)]

## Identity and access device operation service limits

[!INCLUDE [Identity and access device operation throttling documentation](../includes/throttling-device-operation.md)]

## Identity protection and conditional access service limits

[!INCLUDE [Information protection throttling documentation](../includes/throttling-identityprotection-ca.md)]

## Identity providers service limits

[!INCLUDE [CPIM throttling documentation](../includes/throttling-cpim.md)]

## Industry data ETL service limits

[!INCLUDE [Industry data ETL throttling documentation](../includes/throttling-industrydata-etl.md)]

## Information protection service limits

[!INCLUDE [Information protection throttling documentation](../includes/throttling-information-protection.md)]

## Insights service limits

[!INCLUDE [Insights throttling documentation](../includes/throttling-insights.md)]

## Intune service limits

[!INCLUDE [Intune  tunnel throttling documentation](../includes/throttling-intune-throttling-tunnel.md)]

[!INCLUDE [Intune android for work throttling documentation](../includes/throttling-intune-android-for-work.md)]

[!INCLUDE [Intune applications throttling documentation](../includes/throttling-intune-applications.md)]

[!INCLUDE [Intune auditing throttling documentation](../includes/throttling-intune-auditing.md)]

[!INCLUDE [Intune books throttling documentation](../includes/throttling-intune-books.md)]

[!INCLUDE [Intune bundles throttling documentation](../includes/throttling-intune-bundles.md)]

[!INCLUDE [Intune chromebook sync throttling documentation](../includes/throttling-intune-chromebook-sync.md)]

[!INCLUDE [Intune company terms throttling documentation](../includes/throttling-intune-company-terms.md)]

[!INCLUDE [Intune device config v2 throttling documentation](../includes/throttling-intune-device-config-v2.md)]

[!INCLUDE [Intune device configuration throttling documentation](../includes/throttling-intune-device-configuration.md)]

[!INCLUDE [Intune device enrollment throttling documentation](../includes/throttling-intune-device-enrollment.md)]

[!INCLUDE [Intune device intent throttling documentation](../includes/throttling-intune-device-intent.md)]

[!INCLUDE [Intune devices throttling documentation](../includes/throttling-intune-devices.md)]

[!INCLUDE [Intune endpoint protection throttling documentation](../includes/throttling-intune-endpoint-protection.md)]

[!INCLUDE [Intune enrollment throttling documentation](../includes/throttling-intune-enrollment.md)]

[!INCLUDE [Intune GPAnalytics throttling documentation](../includes/throttling-intune-gpanalytics.md)]

[!INCLUDE [Intune managed applications throttling documentation](../includes/throttling-intune-managed-applications.md)]

[!INCLUDE [Intune notifications throttling documentation](../includes/throttling-intune-notifications.md)]

[!INCLUDE [Intune ODJ throttling documentation](../includes/throttling-intune-odj.md)]

[!INCLUDE [Intune partner integration throttling documentation](../includes/throttling-intune-partner-integration.md)]

[!INCLUDE [Intune rbac throttling documentation](../includes/throttling-intune-rbac.md)]

[!INCLUDE [Intune remote assistance throttling documentation](../includes/throttling-intune-remote-assistance.md)]

[!INCLUDE [Intune telephony throttling documentation](../includes/throttling-intune-telephony.md)]

[!INCLUDE [Intune TEM throttling documentation](../includes/throttling-intune-tem.md)]

[!INCLUDE [Intune troubleshooting throttling documentation](../includes/throttling-intune-troubleshooting.md)]

[!INCLUDE [Intune unlock throttling documentation](../includes/throttling-intune-unlock.md)]

[!INCLUDE [Intune updates throttling documentation](../includes/throttling-intune-updates.md)]

[!INCLUDE [Intune wip throttling documentation](../includes/throttling-intune-wip.md)]

## Invitation manager service limits

[!INCLUDE [Invitation manager throttling documentation](../includes/throttling-invitation-manager.md)]

## Microsoft 365 reports service limits

[!INCLUDE [Microsoft 365 reports throttling documentation](../includes/throttling-m365-reports.md)]

## Microsoft Teams service limits

[!INCLUDE [Teams throttling documentation](../includes/throttling-teams.md)]

## Multitenant management service limits

[!INCLUDE [Multi tenant platform throttling documentation](../includes/throttling-multi-tenant-platform.md)]

## OneNote service limits

[!INCLUDE [Onenote throttling documentation](../includes/throttling-onenote.md)]

## Open and schema extensions service limits

[!INCLUDE [Open and schema extensions throttling documentation](../includes/throttling-extensions.md)]

## Outlook service limits

Outlook service limits apply to the public cloud and [national cloud deployments](./deployments.md).

[!INCLUDE [Outlook throttling documentation](../includes/throttling-outlook.md)]

## Places service limits

[!INCLUDE [Places throttling documentation](../includes/throttling-places.md)]

## Project Rome service limits

[!INCLUDE [Project Rome throttling documentation](../includes/throttling-project-rome.md)]

## Security detections and incidents service limits

[!INCLUDE [Security detections and incidents throttling documentation](../includes/throttling-security-detections-incidents.md)]

## Security eDiscovery service limits

[!INCLUDE [Security eDiscovery throttling documentation](../includes/throttling-security-ediscovery.md)]

## Service Communications service limits

[!INCLUDE [Service health and communications throttling documentation](../includes/throttling-service-health-communications.md)]

## Subscription service limits

[!INCLUDE [Subscription services throttling documentation](../includes/throttling-subscription-services.md)]

## Tasks and plans service limits

[!INCLUDE [Tasks and plans throttling documentation](../includes/throttling-tasks-and-plans.md)]

## Viva Engage service limits

[!INCLUDE [Viva Engage throttling documentation](../includes/throttling-viva-engage.md)]

## Windows 365 service limits

[!INCLUDE [Windows 365 throttling documentation](../includes/throttling-windows-365.md)]

## Related content

- [Best practices for working with Microsoft Graph](best-practices-concept.md)
