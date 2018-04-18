# Intune devices and apps API overview

Microsoft Intune helps enterprises manage devices and apps within an organization.  Graph API for Intune helps administrators and developers use their preferred tools to manage devices, apps, and even Intune itself.  

ISVs can use Graph API for Intune to manage client tenants.

## Why integrate with Intune?

Microsoft Graph API for Intune helps you access Intune device and application information, manage devices, manage apps, and automate Intune itself.

### Manage devices

Define and enforce [device compliance](../api-reference/v1.0/resources/intune_deviceconfig_devicecomplianceactionitem.md) policies, such as password complexity and duration, encryption, threat protection levels, and so on.  (Supported policies vary according to operating system and version).
[Protect company data](../api-reference/v1.0/resources/intune_mam_windowsinformationprotectionpolicy.md) regardless of the device platform, whether Windows, Android, Mac, or iOS devices.

Create and deploy [device configuration](../api-reference/v1.0/resources/intune_deviceconfig_deviceconfiguration.md) policies, including OS platform/versioning, domain membership, configuration setting management.

Create and deploy device [access control](../api-reference/v1.0/resources/intune_onboarding_onpremisesconditionalaccesssettings.md) policies, including restricted download, network accessory access, and file transfer.

Perform [remote actions](../api-reference/v1.0/resources/intune_devices_manageddevice.md), such as locate device, change password, and wipe device.

### Manage apps 

Deploy [apps to devices](../api-reference/v1.0/resources/intune_apps_mobileapp.md) or prevent apps from being deployed.

Manage access to [e-books](../api-reference/v1.0/resources/intune_books_ebookinstallsummary.md) and related services.

Define and deploy app configuration settings, app protection settings, and app usage policies.

### Administer Intune

Define and assign [role based](../api-reference/v1.0/resources/intune_rbac_conceptual.md) access controls.

Audit and report compliance, usage, and access.

Manage [telecom expenses](../api-reference/v1.0/resources/intune_tem_conceptual.md).


## Next steps

- Learn what's [required to use](https://docs.microsoft.com/intune/intune-graph-apis) Graph API for Intune.
- Explore [PowerShell Intune samples](https://github.com/microsoftgraph/powershell-intune-samples) to learn how to perform common tasks using PowerShell and Graph API for Intune.
- Use the [Graph API for Intune](../api-reference/v1.0/resources/intune_graph_overview.md).
- What's New with [Graph API for Intune](changelog.md).
- Explore [scenarios supported](https://developer.microsoft.com/en-us/graph/graph/examples) by Microsoft Graph API.
