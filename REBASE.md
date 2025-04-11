# Edición del historial de Git

## Pasos realizados
1. Realicé varios commits con mensajes poco claros.
2. Ejecuté `git rebase -i HEAD~3` para reescribir el historial:
   - Cambié los mensajes de los commits.
   - Fusioné commits innecesarios en uno solo.
3. Usé `git push --force` para actualizar el historial en el repositorio remoto.
