-- margin-to-footnote.lua
-- Convierte divs .column-margin en notas al pie en salida PDF/LaTeX.
-- En HTML no hace nada (los deja pasar sin modificar).

function Div(el)
  -- Solo actuar en salida LaTeX/PDF
  if not (FORMAT == "latex" or FORMAT == "pdf") then
    return nil  -- sin cambios
  end

  -- Verificar que el div tenga la clase column-margin
  if not el.classes:includes("column-margin") then
    return nil
  end

  -- Convertir el contenido del div en una nota al pie
  -- pandoc.Note acepta una lista de bloques
  local note = pandoc.Note(el.content)

  -- Devolver el Note envuelto en un Para para que sea inline
  return pandoc.Plain({ note })
end
