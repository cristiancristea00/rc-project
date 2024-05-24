set ModuleHierarchy {[{
"Name" : "LinearImageFilter","ID" : "0","Type" : "sequential",
"SubLoops" : [
	{"Name" : "img_rows","ID" : "1","Type" : "no",
	"SubLoops" : [
	{"Name" : "img_cols","ID" : "2","Type" : "no",
		"SubLoops" : [
		{"Name" : "ker_rows","ID" : "3","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_LinearImageFilter_Pipeline_ker_cols_fu_254","ID" : "4","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "ker_cols","ID" : "5","Type" : "pipeline"},]},]},]},]},]
}]}