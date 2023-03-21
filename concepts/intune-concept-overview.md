---
title: "Intune devices and apps API overview"
description: "Use the Intune API in Microsoft Graph to manage devices and apps and automate Intune in your organization. ISVs can use the Intune API to manage client tenants."
author: "dougeby"
ms.localizationpriority: high
ms.prod: "intune"
---

# Intune devices and apps API overview

Microsoft Intune helps enterprises manage devices and apps within an organization. You can use the Intune API in Microsoft Graph to manage devices, apps, and even configure Intune while using your preferred tools. 

If you're an ISV, you can also use the Intune API to manage client tenants.

> [!VIDEO https://www.youtube-nocookie.com/embed/yU1HeqNmN7A]

## Why integrate with Intune?

You can use the Intune API in Microsoft Graph to access Intune device and application information, manage devices, manage apps, and automate Intune.

### Manage devices

You can use the Intune API to:

- Define and enforce [device compliance](/graph/api/resources/intune-deviceconfig-devicecomplianceactionitem) policies, such as password complexity and duration, encryption, threat protection levels, and so on.  (Supported policies vary according to operating system and version).
- [Protect company data](/graph/api/resources/intune-mam-windowsinformationprotectionpolicy), regardless of whether the device platform is Windows, Android, Mac, or iOS.
- Create and deploy [device configuration](/graph/api/resources/intune-deviceconfig-deviceconfiguration) policies, including operating system platform/versioning, domain membership, and configuration setting management.
- Create and deploy device [access control](/graph/api/resources/intune-onboarding-onpremisesconditionalaccesssettings) policies, including restricted download, network accessory access, and file transfer.
- Perform [remote actions](/graph/api/resources/intune-devices-manageddevice), such as locate device, change password, and wipe device.

### Manage apps 

You can use the Intune API to perform the following app management tasks:

- Deploy [apps to devices](/graph/api/resources/intune-apps-mobileapp) or prevent apps from being deployed.
- Manage access to [ebooks](/graph/api/resources/intune-books-ebookinstallsummary) and related services.
- Define and deploy app configuration settings, app protection settings, and app usage policies.

### Automate Intune

Automate Intune by using the Intune API to:

- Define and assign [role based](/graph/api/resources/intune-rbac-conceptual) access controls.
- Audit and report compliance, usage, and access.
- Manage [telecom expenses](/graph/api/resources/intune-tem-conceptual).

## API reference
Looking for the API reference for this service?

- [Intune API in Microsoft Graph v1.0](/graph/api/resources/intune-graph-overview?view=graph-rest-1.0&preserve-view=true)
- [Intune API in Microsoft Graph beta](/graph/api/resources/intune-graph-overview?view=graph-rest-beta&preserve-view=true)

## Next steps

- [Use Azure AD to access the Intune API](/intune/intune-graph-apis).
- See how to perform common tasks by using the [PowerShell Intune samples](https://github.com/microsoftgraph/powershell-intune-samples).
- Find out how to [use the Intune REST API](/graph/api/resources/intune-graph-overview).
- See the [Changelog](changelog.md) for information about what's new in the Intune API.
- Explore [resources](https://developer.microsoft.com/graph/gallery/) for more ideas about how to use Microsoft Graph.
