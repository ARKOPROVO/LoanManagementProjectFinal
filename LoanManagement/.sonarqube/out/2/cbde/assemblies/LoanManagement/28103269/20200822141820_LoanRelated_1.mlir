// Skipping function Up(none), it contains poisonous unsupported syntaxes

func @_LoanManagement.Migrations.LoanRelated.Down$Microsoft.EntityFrameworkCore.Migrations.MigrationBuilder$(none) -> () loc("D:\\FinalProject\\LoanManagementProject\\LoanManagement\\Migrations\\20200822141820_LoanRelated.cs" :30 :8) {
^entry (%_migrationBuilder : none):
%0 = cbde.alloca none loc("D:\\FinalProject\\LoanManagementProject\\LoanManagement\\Migrations\\20200822141820_LoanRelated.cs" :30 :37)
cbde.store %_migrationBuilder, %0 : memref<none> loc("D:\\FinalProject\\LoanManagementProject\\LoanManagement\\Migrations\\20200822141820_LoanRelated.cs" :30 :37)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\FinalProject\\LoanManagementProject\\LoanManagement\\Migrations\\20200822141820_LoanRelated.cs" :32 :12) // Not a variable of known type: migrationBuilder
%2 = cbde.unknown : none loc("D:\\FinalProject\\LoanManagementProject\\LoanManagement\\Migrations\\20200822141820_LoanRelated.cs" :33 :22) // "LoanDetails" (StringLiteralExpression)
%3 = cbde.unknown : none loc("D:\\FinalProject\\LoanManagementProject\\LoanManagement\\Migrations\\20200822141820_LoanRelated.cs" :32 :12) // migrationBuilder.DropTable(                  name: "LoanDetails") (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
