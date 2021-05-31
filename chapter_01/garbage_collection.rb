require "pp"

pp GC.stat

#
# [~/Books/ruby_cookbook/chapter_01] ruby garbage_collection.rb
# {:count=>10,
#  :heap_allocated_pages=>50,
#  :heap_sorted_length=>50,
#  :heap_allocatable_pages=>0,
#  :heap_available_slots=>20430,
#  :heap_live_slots=>19579,
#  :heap_free_slots=>851,
#  :heap_final_slots=>0,
#  :heap_marked_slots=>16926,
#  :heap_eden_pages=>50,
#  :heap_tomb_pages=>0,
#  :total_allocated_pages=>50,
#  :total_freed_pages=>0,
#  :total_allocated_objects=>59381,
#  :total_freed_objects=>39802,
#  :malloc_increase_bytes=>83248,
#  :malloc_increase_bytes_limit=>16777216,
#  :minor_gc_count=>9,
#  :major_gc_count=>1,
#  :compact_count=>0,
#  :read_barrier_faults=>0,
#  :total_moved_objects=>0,
#  :remembered_wb_unprotected_objects=>212,
#  :remembered_wb_unprotected_objects_limit=>284,
#  :old_objects=>16372,
#  :old_objects_limit=>23990,
#  :oldmalloc_increase_bytes=>560336,
#  :oldmalloc_increase_bytes_limit=>16777216}
