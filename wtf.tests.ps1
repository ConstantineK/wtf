import-module Pester
$var = "string"

Describe "$commandName tests" {
	InModuleScope Pester {
		It "Sould pass this value into the scope" {
				$var | Should Not BeNullOrEmpty
		}
	}
}