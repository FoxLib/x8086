// ---------------------------------------------------------------------
// Списки регистров
// ---------------------------------------------------------------------

// Сегментные регистры
reg [15:0]  seg_cs = 16'hF000;
reg [15:0]  seg_ss = 16'h0000;
reg [15:0]  seg_es = 16'h0000;
reg [15:0]  seg_ds = 16'h0000;
reg [15:0]  seg_ea = 0;

// Регистры
reg [15:0]  ea = 0;
reg [15:0]  ip = 0;
reg [15:0]  ax = 0;
reg [15:0]  bx = 0;
reg [15:0]  cx = 0;
reg [15:0]  dx = 0;
reg [15:0]  sp = 0;
reg [15:0]  bp = 0;
reg [15:0]  si = 0;
reg [15:0]  di = 0;

// Выбранная шина адреса (sel=1) seg:ea (sel=0) cs:ip
reg         sel = 0;
reg         sel_seg = 0;
reg  [1:0]  sel_rep = 0;

// ---------------------------------------------------------------------
// Состояние процессора
// ---------------------------------------------------------------------

reg [1:0]   main = 0;
reg [3:0]   tstate = 0;
reg [3:0]   estate = 0;
reg [7:0]   opcode = 0;
reg [7:0]   modrm = 0;
reg         isize = 0;   // 8|16
reg         idir  = 0;   // rm,r | r,rm
reg [ 3:0]  alumode = 0;
reg [15:0]  op1;
reg [15:0]  op2;

// ---------------------------------------------------------------------
// Константы и initial
// ---------------------------------------------------------------------

localparam

    PREPARE = 0,
    MAIN    = 1,
    FETCHEA = 2;

initial data = 8'hFF;
initial wreq = 0;
