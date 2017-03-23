class Task < ApplicationRecord
  enum title: [:baseline, :wave1, :wave2, :wave3]
end
