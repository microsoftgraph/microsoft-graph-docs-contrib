---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Win32LobApp()
request_body.@odata_type = '#microsoft.graph.win32LobApp'

request_body.display_name = 'Display Name value'

request_body.description = 'Description value'

request_body.publisher = 'Publisher value'

large_icon = MimeContent()
large_icon.@odata_type = 'microsoft.graph.mimeContent'

large_icon.type = 'Type value'

large_icon.Value(base64_decode('dmFsdWU='))


request_body.large_icon = large_icon
request_body.is_featured = True

request_body.privacy_information_url = 'https://example.com/privacyInformationUrl/'

request_body.information_url = 'https://example.com/informationUrl/'

request_body.owner = 'Owner value'

request_body.developer = 'Developer value'

request_body.notes = 'Notes value'

request_body.publishingstate(MobileAppPublishingState.Processing('mobileapppublishingstate.processing'))

request_body.committed_content_version = 'Committed Content Version value'

request_body.file_name = 'File Name value'

request_body.Size = 4

request_body.install_command_line = 'Install Command Line value'

request_body.uninstall_command_line = 'Uninstall Command Line value'

request_body.applicablearchitectures(WindowsArchitecture.X86('windowsarchitecture.x86'))

request_body.MinimumFreeDiskSpaceInMB = 8

request_body.MinimumMemoryInMB = 1

request_body.MinimumNumberOfProcessors = 9

request_body.MinimumCpuSpeedInMHz = 4

rules_win32_lob_app_rule1 = Win32LobAppRegistryRule()
rules_win32_lob_app_rule1.@odata_type = 'microsoft.graph.win32LobAppRegistryRule'

rules_win32_lob_app_rule1.ruletype(Win32LobAppRuleType.Requirement('win32lobappruletype.requirement'))

rules_win32_lob_app_rule1.check32_bit_on64_system = True

rules_win32_lob_app_rule1.key_path = 'Key Path value'

rules_win32_lob_app_rule1.value_name = 'Value Name value'

rules_win32_lob_app_rule1.operationtype(Win32LobAppRegistryRuleOperationType.Exists('win32lobappregistryruleoperationtype.exists'))

rules_win32_lob_app_rule1.operator(Win32LobAppRuleOperator.Equal('win32lobappruleoperator.equal'))

rules_win32_lob_app_rule1.comparison_value = 'Comparison Value value'


rulesArray []= rulesWin32LobAppRule1;
request_body.rules(rulesArray)


install_experience = Win32LobAppInstallExperience()
install_experience.@odata_type = 'microsoft.graph.win32LobAppInstallExperience'

install_experience.runasaccount(RunAsAccountType.User('runasaccounttype.user'))

install_experience.devicerestartbehavior(Win32LobAppRestartBehavior.Allow('win32lobapprestartbehavior.allow'))


request_body.install_experience = install_experience
return_codes_win32_lob_app_return_code1 = Win32LobAppReturnCode()
return_codes_win32_lob_app_return_code1.@odata_type = 'microsoft.graph.win32LobAppReturnCode'

return_codes_win32_lob_app_return_code1.ReturnCode = 10

return_codes_win32_lob_app_return_code1.type(Win32LobAppReturnCodeType.Success('win32lobappreturncodetype.success'))


returnCodesArray []= returnCodesWin32LobAppReturnCode1;
request_body.returncodes(returnCodesArray)


msi_information = Win32LobAppMsiInformation()
msi_information.@odata_type = 'microsoft.graph.win32LobAppMsiInformation'

msi_information.product_code = 'Product Code value'

msi_information.product_version = 'Product Version value'

msi_information.upgrade_code = 'Upgrade Code value'

msi_information.requires_reboot = True

msi_information.packagetype(Win32LobAppMsiPackageType.PerUser('win32lobappmsipackagetype.peruser'))

msi_information.product_name = 'Product Name value'

msi_information.publisher = 'Publisher value'


request_body.msi_information = msi_information
request_body.setup_file_path = 'Setup File Path value'

request_body.minimum_supported_windows_release = 'Minimum Supported Windows Release value'




result = await client.device_app_management.mobile_apps.by_mobile_app_id('mobileApp-id').patch(request_body = request_body)


```