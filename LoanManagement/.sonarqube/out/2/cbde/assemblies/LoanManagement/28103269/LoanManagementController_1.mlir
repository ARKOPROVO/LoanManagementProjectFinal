// Skipping function GetSearchResult(none, i32, i32), it contains poisonous unsupported syntaxes

// Skipping function AddLoan(none), it contains poisonous unsupported syntaxes

// Skipping function EditLoan(i32, none), it contains poisonous unsupported syntaxes

func @_LoanManagement.Controllers.LoanManagementController.Delete$int$(i32) -> () loc("D:\\FinalProject\\LoanManagementProject\\LoanManagement\\Controllers\\LoanManagementController.cs" :150 :8) {
^entry (%_id : i32):
%0 = cbde.alloca i32 loc("D:\\FinalProject\\LoanManagementProject\\LoanManagement\\Controllers\\LoanManagementController.cs" :151 :27)
cbde.store %_id, %0 : memref<i32> loc("D:\\FinalProject\\LoanManagementProject\\LoanManagement\\Controllers\\LoanManagementController.cs" :151 :27)
br ^0

^0: // ExitBlock
return

}
