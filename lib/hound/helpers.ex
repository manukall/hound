defmodule Hound.ExUnitHelpers do

  defmacro __using__([]) do
    quote do
      import Hound.ExUnitHelpers.Dialog
      import Hound.ExUnitHelpers.Element
      import Hound.ExUnitHelpers.Navigation
      import Hound.ExUnitHelpers.Page
      import Hound.ExUnitHelpers.Screenshot
      import Hound.ExUnitHelpers.ScriptExecution
      import Hound.ExUnitHelpers.Session
    end
  end

end
