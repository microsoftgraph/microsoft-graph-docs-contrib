---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.organizational_branding_theme_localization import OrganizationalBrandingThemeLocalization
from msgraph_beta.generated.models.login_page_branding_visual_element import LoginPageBrandingVisualElement
from msgraph_beta.generated.models.content_customization import ContentCustomization
from msgraph_beta.generated.models.login_page_layout_configuration import LoginPageLayoutConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = OrganizationalBrandingThemeLocalization(
	odata_type = "#microsoft.graph.organizationalBrandingThemeLocalization",
	locale = "en-US",
	account_reset_credentials = LoginPageBrandingVisualElement(
		odata_type = "microsoft.graph.loginPageBrandingVisualElement",
	),
	background_image_relative_url = None,
	banner_logo_relative_url = None,
	cannot_access_your_account = LoginPageBrandingVisualElement(
		odata_type = "microsoft.graph.loginPageBrandingVisualElement",
	),
	cdn_hosts = [
	],
	content_customization = ContentCustomization(
		odata_type = "microsoft.graph.contentCustomization",
	),
	custom_c_s_s_relative_url = None,
	favicon_relative_url = None,
	forgot_my_password = LoginPageBrandingVisualElement(
		odata_type = "microsoft.graph.loginPageBrandingVisualElement",
	),
	header_background_color = "#3377ffff",
	header_logo_relative_url = None,
	login_page_layout_configuration = LoginPageLayoutConfiguration(
		odata_type = "microsoft.graph.loginPageLayoutConfiguration",
	),
	page_background_color = "#FFFF33",
	privacy_and_cookies = LoginPageBrandingVisualElement(
		odata_type = "microsoft.graph.loginPageBrandingVisualElement",
	),
	reset_it_now = LoginPageBrandingVisualElement(
		odata_type = "microsoft.graph.loginPageBrandingVisualElement",
	),
	sign_in_page_text = "Welcome to Contoso",
	square_logo_relative_url = None,
	square_logo_dark_relative_url = None,
	terms_of_use = LoginPageBrandingVisualElement(
		odata_type = "microsoft.graph.loginPageBrandingVisualElement",
	),
	username_hint_text = "ContosoUsername",
)

result = await graph_client.organization.by_organization_id('organization-id').branding.themes.by_organizational_branding_theme_id('organizationalBrandingTheme-id').localizations.by_organizational_branding_theme_localization_locale('organizationalBrandingThemeLocalization-locale').patch(request_body)


```