touch log.diff
for i in {1..8}
do
  diff input$i-profile_elements.dat \
       ../profile/input$i-profile_elements.dat >> log.diff
  diff input$i-profile_vertices.dat \
       ../profile/input$i-profile_vertices.dat >> log.diff
done
echo "Diff's log written in log.diff"
