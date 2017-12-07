import-module Pester
$var = "string"

Describe "$commandName tests" {
	InModuleScope Pester {
		It "Should have a module version of 4.1.0" {
			Get-Module Pester | Select-Object -ExpandProperty Version | Should Be "4.1.0"
		} # Passes

		It "Should pass this value into the scope" {
				$var | Should Not BeNullOrEmpty
		} # Fails
	}
}