# pmb_code() works

    Code
      pmb_code({ })
    Output
      $pmbr
      {
      }
      
      attr(,"class")
      [1] "pmb_code"
    Code
      pmb_code("#include <TMB.hpp>")
    Output
      $tmbr
      #include <TMB.hpp>
      attr(,"class")
      [1] "pmb_code"
    Code
      pmb_code("parameters {")
    Output
      $smbr
      parameters {
      attr(,"class")
      [1] "pmb_code"
    Code
      pmb_code("model {")
    Output
      $jmbr
      model {
      attr(,"class")
      [1] "pmb_code"
    Code
      pmb_code(pmb_code({ }))
    Output
      $pmbr
      {
      }
      
      attr(,"class")
      [1] "pmb_code"
    Code
      pmb_code(pmbr = { }, jmbr = mb_code("model {"), tmbr = mb_code(
        "#include <TMB.hpp>"), )
    Output
      $pmbr
      {
      }
      
      $jmbr
      model {
      $tmbr
      #include <TMB.hpp>
      attr(,"class")
      [1] "pmb_code"
    Code
      pmb_code(c(pmbr = { }, jmbr = mb_code("model {"), tmbr = mb_code(
        "#include <TMB.hpp>")))
    Output
      $pmbr
      {
      }
      
      $jmbr
      model {
      $tmbr
      #include <TMB.hpp>
      attr(,"class")
      [1] "pmb_code"
    Code
      pmb_code(list(pmbr = { }, jmbr = mb_code("model {"), tmbr = mb_code(
        "#include <TMB.hpp>")))
    Output
      $pmbr
      {
      }
      
      $jmbr
      model {
      $tmbr
      #include <TMB.hpp>
      attr(,"class")
      [1] "pmb_code"

