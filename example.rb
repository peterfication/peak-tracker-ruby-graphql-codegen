require_relative "lib/peak_tracker/queries/peaks"

peaks = PeakTracker::Queries::Peaks.new.query
peaks.data.peaks.edges.each do |edge|
  puts edge.node.name
end
