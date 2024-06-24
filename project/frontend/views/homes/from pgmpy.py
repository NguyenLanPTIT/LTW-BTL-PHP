from pgmpy.models import BayesianModel
from pgmpy.factors.discrete import TabularCPD
from pgmpy.inference import VariableElimination

# Tạo mô hình
model = BayesianModel([('C', 'H'), ('P', 'H')])  # C là cánh cửa có xe, P là cánh cửa người chơi chọn, H là cửa MC mở

# Định nghĩa CPD cho C
cpd_c = TabularCPD(variable='C', variable_card=3, values=[[1/3], [1/3], [1/3]])

# Định nghĩa CPD cho P
cpd_p = TabularCPD(variable='P', variable_card=3, values=[[1/3], [1/3], [1/3]])

# Định nghĩa CPD cho H
cpd_h = TabularCPD(variable='H', variable_card=3, 
                  values=[
                      [0, 0, 0.5, 0, 0, 0.5, 0.5, 0.5, 0],
                      [0.5, 0, 0, 0, 0.5, 0, 0, 0.5, 0.5],
                      [0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0, 0, 0]
                  ],
                  evidence=['C', 'P'],
                  evidence_card=[3, 3])

# Gắn CPD vào mô hình
model.add_cpds(cpd_c, cpd_p, cpd_h)

# Kiểm tra mô hình có đúng không
assert model.check_model()

# Sử dụng thuật toán suy luận
inference = VariableElimination(model)

# Giả sử bạn chọn cửa 0 và MC mở cửa 1, tính xác suất xe đang ở từng cửa còn lại
result = inference.query(variables=['C'], evidence={'P': 0, 'H': 1})
print(result)