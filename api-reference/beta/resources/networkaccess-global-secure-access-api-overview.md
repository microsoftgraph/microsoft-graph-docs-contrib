---
title: "Secure access to cloud, public, and private apps using Microsoft Graph network access APIs (preview)"
description: "Learn how to use Microsoft Graph network access APIs to secure access to cloud, public, and private apps using Microsoft Entra Internet Access and Microsoft Entra Private Access."
author: Moti-ba
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: conceptualPageType
ms.date: 06/05/2024
---

# Secure access to cloud, public, and private apps using Microsoft Graph network access APIs (preview)

Microsoft Entra Internet Access and Microsoft Entra Private Access comprise Microsoft's Security Service Edge solution and enable organizations to consolidate controls and configure unified identity and network access policies. Microsoft Entra Internet Access secures access to Microsoft 365, SaaS, and public internet apps while protecting users, devices, and data against internet threats. On the other hand, Microsoft Entra Private Access secures access to private apps hosted on-premises or in the cloud.

This article describes the network access APIs in Microsoft Graph that enable the Microsoft Entra Internet Access and Microsoft Entra Private Access services. Global Secure Access is the unifying term for these two services. For more information, see [What is Global Secure Access?](/azure/global-secure-access/overview-what-is-global-secure-access)

## Building blocks of the network access APIs

The network access APIs provide a framework to configure how you want to forward or filter traffic and their associated rules. The following table lists the core entities that make up the network access APIs.

| Entities | Description |
|--|--|
| [forwardingProfile](../resources/networkaccess-forwardingprofile.md) | Determines how traffic is routed or bypassed through the Global Secure Access services. A forwarding profile is tied to one traffic type that can be Microsoft 365, Internet, or Private traffic. A forwarding profile can then have multiple forwarding policies. For example, the Microsoft 365 forwarding profile has policies for Exchange Online, SharePoint Online, and so on.  |
| [forwardingPolicy](../resources/networkaccess-forwardingpolicy.md) | Defines the rules for routing or bypassing specific traffic type through the Global Secure Access services. Each policy is tried to one traffic type that can be Microsoft 365, Internet, or Private traffic. A forwarding policy can have only forwarding policy rules. |
| [forwardingPolicyLink](../resources/networkaccess-forwardingpolicylink.md) | Represents the relationship between a forwarding profile and a forwarding policy, and maintains the current state of the connection.|
| [policyRule](../resources/networkaccess-policyrule.md) | Maintains the core definition of a policy ruleset. |
| [remoteNetwork](../resources/networkaccess-remotenetwork.md) | Represents the physical location from where users and devices connect to access the cloud, public, or private apps. Each remote network comprises devices and the connection of devices in a remote network is maintained via customer-premises equipment (CPE).|
| [filteringProfile](../resources/networkaccess-filteringprofile.md) | Groups filtering policies, which are then associated with Conditional Access policies in Microsoft Entra to leverage a rich set of user-context conditions.|
| [filteringPolicy](../resources/networkaccess-filteringpolicy.md) | Encapsulates various policies configured by administrators, such as network filtering policies, data loss prevention, and threat protection.|
| [tlsInspectionPolicy](../resources/networkaccess-tlsinspectionpolicy.md) | Encapsulates Transport Layer Security inspection configurations that can be linked to filtering profiles in Global Secure Access. See [What is Transport Layer Security inspection?](/entra/global-secure-access/concept-transport-layer-security).|
| [filteringPolicLink](../resources/networkaccess-filteringpolicylink.md) | Represents the relationship between a filtering profile and a filtering policy, and maintains the current state of the connection.|
| [tlsInspectionPolicyLink](../resources/networkaccess-tlsinspectionpolicylink.md) | Represents the relationship between a filtering profile and a TLS inspection policy, and maintains the current state of the connection.|

## Onboard to the service process

To start using the Global Secure Access services and the supporting network access APIs, you must explicitly onboard to the service.

| Operation                                                         | Description                                                                 |
|-------------------------------------------------------------------|-----------------------------------------------------------------------------|
| [Onboard tenant](../api/networkaccess-networkaccessroot-onboard.md) | Onboard to the Microsoft Entra Internet Access and Private Access services. |
| [Check status](../api/networkaccess-tenantstatus-get.md)                 | Check the onboarding status for the tenant.                                 |

## Traffic forwarding profiles and policies

The following APIs allow an admin to manage and configure forwarding profiles. There are three default profiles: Microsoft 365, Private, and Internet. Use the following APIs to manage traffic forwarding profiles and policies.

| Sample operations | Description |
|--|--|
| [List forwarding profiles](../api/networkaccess-networkaccessroot-list-forwardingprofiles.md) | List the forwarding profiles configured for the tenant. You can also retrieve the associated policies using the `$expand` query parameter.|
| [Update forwardingProfile](../api/networkaccess-forwardingprofile-update.md) | Enable or disable a forwarding profile or configure associations such as the remote network. |
| [List forwarding policies](../api/networkaccess-networkaccessroot-list-forwardingpolicies.md) | List the forwarding policies configured for the tenant. You can also retrieve the associated forwarding policy rules using the `$expand` query parameter.|
| [List forwarding policy links](../api/networkaccess-forwardingprofile-list-policies.md) | List the policy links associated with a forwarding profile. You can also retrieve the associated forwarding policy rules using the `$expand` query parameter.|

## Remote networks

A remote network scenario involves user devices or user-less devices like printers establishing connectivity via customer-premises equipment (CPE), also known as device links, at a physical office location.

Use the following APIs to manage the details of a remote network that you've onboarded to the service.

| Sample operations | Description |
|--|--|
| [Create a remote network](../api/networkaccess-connectivity-post-remotenetworks.md) <br/>[Create device links for a remote network](../api/networkaccess-remotenetwork-post-devicelinks.md) <br/>[Create forwarding profiles for a remote network](../api/networkaccess-remotenetwork-post-forwardingprofiles.md)| Create remote networks and their associated device links and forwarding profiles.|
| [List remote networks](../api/networkaccess-connectivity-list-remotenetworks.md) <br/>[List device links for a remote network](../api/networkaccess-remotenetwork-list-devicelinks.md) <br/>[List forwarding profiles for a remote network](../api/networkaccess-remotenetwork-list-forwardingprofiles.md)| List remote networks and their associated device links and forwarding profiles.|

## Access controls

The network access APIs provide a means to manage three kinds of access control settings within your organization: cross-tenant access, conditional access, and forwarding options. These settings ensure secure and efficient network access for devices and users within your tenant.

### Cross-tenant access settings

Cross-tenant access settings involve network packet tagging and the enforcement of tenant restrictions (TRv2) policies to help prevent data exfiltration. Use the [crossTenantAccessSettings resource type](../resources/networkaccess-crosstenantaccesssettings.md) and its associated APIs to manage cross-tenant access settings.

### Conditional access settings

Conditional access settings in the Global Secure Access services involve enabling or disabling the conditional access signaling for source IP restoration and connectivity. The configuration determines whether the target resource receives the original source IP address of the client or the IP address of the Global Secure Access service.

Use the [conditionalAccessSettings resource type](../resources/networkaccess-conditionalaccesssettings.md) and its associated APIs to manage conditional access settings.

Use the [compliantNetworkNamedLocation resource type](../resources/compliantnetworknamedlocation.md) to ensure that users connect from a verified network connectivity model for their specific tenant and are compliant with security policies enforced by administrators.

### Forwarding options

Forwarding options allows administrators to enable or disable the ability to skip DNS lookup at the edge and forward Microsoft 365 traffic directly to Front Door using the client-resolved destination IP. Use the [forwardingOptions resource type](../resources/networkaccess-forwardingoptions.md) and its associated APIs to manage forwarding options.

## Audit logs

Monitoring and auditing of events within your environment is crucial for maintaining security, compliance, and operational efficiency. The Global Secure Access events are logged in the [directory logs](../resources/directoryaudit.md) and [sign-in logs](../resources/signin.md) can be retrieved using associated APIs.

## Traffic logs and reports

You can browse through the network traffic connection logs to see a breakdown of the types of network traffic through the Global Secure Access services. Use the [networkAccessTraffic resource type](../resources/networkaccess-networkaccesstraffic.md) and its associated APIs to view granular network traffic logs.

You can also retrieve summarized counts of traffic relating to devices, users, transactions and cross-tenant access requests through the Global Secure Access services. Use the [reports resource type](../resources/networkaccess-reports.md) and its associated APIs to view summarized network traffic statistics.

## Enriched Microsoft 365 traffic logs

The Global Secure Access services enable you to enrich the [Microsoft 365 audit logs](/microsoft-365/compliance/audit-log-search?view=o365-worldwide&preserve-view=true) with network traffic information. With enriched traffic logs, you can review network diagnostic data, performance data, and security events relevant to Microsoft 365 apps. Traffic relating to the following three Microsoft 365 workloads can be enriched with network traffic information: SharePoint, Microsoft Teams, and Exchange Online.

<!-- Start of: Link to ZT guidance: H2 section -->

[!INCLUDE [zero-trust](../../../includes/identity-zero-trust.md)]

<!-- End of: Link to ZT guidance -->

## Related content

- [What is Global Secure Access?](/azure/global-secure-access/overview-what-is-global-secure-access)
