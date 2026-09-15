Shader "Effect_C/Almighty_UI_New" {
	Properties {
		[HideInInspector] _EmissionColor ("Emission Color", Vector) = (1,1,1,1)
		[HideInInspector] _AlphaCutoff ("Alpha Cutoff ", Range(0, 1)) = 0.5
		[ASEBegin] [Enum(UnityEngine.Rendering.CullMode)] _CullMode ("CullMode", Float) = 2
		[Enum(UnityEngine.Rendering.CompareFunction)] _ZTest ("ZTest", Float) = 4
		[Enum(UnityEngine.Rendering.BlendMode)] _Src ("Src", Float) = 5
		[Enum(UnityEngine.Rendering.BlendMode)] _Dst ("Dst", Float) = 1
		[Group(Main)] [GroupHeader(Main,MainTex)] [GroupToggle(Main)] _UseUITex ("UI as MainTex", Float) = 0
		[GroupItem(Main)] _Main_Tex ("Main_Tex", 2D) = "white" {}
		[GroupEnum(Main,A 0 R 1)] _Main_Tex_A_NO_R ("Main_Tex_A_NO_R", Float) = 0
		[GroupItem(Main)] [HDR] _Main_Tex_Color ("Main_Tex_Color", Vector) = (1,1,1,1)
		[GroupToggle(Main)] _HDRColorFix ("_HDRColorFix", Float) = 0
		[GroupToggle(Main)] _Main_Tex_Particle_Speed ("Main_Tex_Particle_Speed", Float) = 0
		[GroupItem(Main)] _Main_Tex_Brightness ("Main_Tex_Brightness", Float) = 1
		[GroupItem(Main)] _Main_Tex_Alpha ("Main_Tex_Alpha", Float) = 1
		[GroupToggle(Main)] _RotatorFromZero_On ("RotatorFromZero_On", Float) = 0
		[GroupItem(Main)] _Main_Tex_Rotator ("Main_Tex_Rotator", Range(0, 360)) = 0
		[GroupItem(Main)] _Main_Tex_UV ("Main_Tex_UV", Vector) = (0,0,0,0)
		[Group(Mask)] [GroupHeader(Mask,MaskTex)] [GroupToggle(Mask,_MASK_TEX_NO_ON)] _Mask_Tex_NO ("Mask_Tex_NO", Float) = 0
		[GroupItem(Mask)] _Mask_Tex ("Mask_Tex", 2D) = "white" {}
		[GroupToggle(Mask)] _Mask_Tex_A ("Mask_Tex_A", Float) = 0
		[GroupItem(Mask)] _Mask_Tex_Rotator ("Mask_Tex_Rotator", Range(0, 360)) = 0
		[GroupToggle(Mask)] _Mask01RotatorFromZero_On ("RotatorFromZero_On", Float) = 0
		[GroupItem(Mask)] _Mask_Tex_UV ("Mask_Tex_UV", Vector) = (0,0,0,0)
		[GroupToggle(Mask)] _MaskTex02On ("Mask_Tex02_On", Float) = 0
		[GroupItem(Mask)] _Mask_Tex02 ("Mask_Tex02", 2D) = "white" {}
		[GroupToggle(Mask)] _Mask_Tex02_A ("Mask_Tex02_A", Float) = 0
		[GroupItem(Mask)] _Mask_Tex02_Rotator ("Mask_Tex02_Rotator", Range(0, 360)) = 0
		[GroupToggle(Mask)] _Mask02RotatorFromZero_On ("RotatorFromZero_On", Float) = 0
		[GroupItem(Mask)] _Mask_Tex02_UV ("Mask_Tex02_UV", Vector) = (0,0,0,0)
		[Group(Remp)] [GroupHeader(Remp,RempTex)] [GroupToggle(Remp,_TEX_2_NO_ON)] _Tex_2_NO ("Tex_2_NO", Float) = 0
		[GroupItem(Remp)] _Remp_Tex ("Remp_Tex", 2D) = "white" {}
		[GroupEnum(Remp,A 0 R 1)] _Tex_2_A_NO_R ("Tex_2_A_NO_R", Float) = 0
		[GroupItem(Remp)] _Remp_Tex_UV ("Remp_Tex_UV", Vector) = (0,0,0,0)
		[Group(Diss)] [GroupHeader(Diss,DissTex)] [GroupToggle(Diss,_DISS_TEX_NO_ON)] _Diss_Tex_NO ("Diss_Tex_NO", Float) = 0
		[GroupItem(Diss)] _Diss_Tex ("Diss_Tex", 2D) = "white" {}
		[GroupToggle(Diss)] _Diss_Tex_Particle_ON ("Diss_Tex_Particle_ON", Float) = 0
		[GroupItem(Diss)] _Diss_Tex_value ("Diss_Tex_value", Float) = 0
		[GroupItem(Diss)] _Diss_Tex_Soft_value ("Diss_Tex_Soft_value", Float) = 0
		[GroupToggle(Diss)] _Diss_Tex_Edge_NO ("Diss_Tex_Edge_NO", Float) = 0
		[GroupItem(Diss)] [HDR] _Diss_Tex_EdgeColor ("Diss_Tex_EdgeColor", Vector) = (1,1,1,1)
		[GroupItem(Diss)] _Diss_Tex_EdgeWidth ("Diss_Tex_EdgeWidth", Float) = 0
		[GroupItem(Diss)] _Diss_Tex_UV ("Diss_Tex_UV", Vector) = (0,0,0,0)
		[Group(Turb)] [GroupHeader(Turb,TurbTex)] [GroupToggle(Turb,_TURB_TEX_ON_ON)] _Turb_Tex_ON ("Turb_Tex_ON", Float) = 0
		[GroupItem(Turb)] _Turb_Tex ("Turb_Tex", 2D) = "white" {}
		[GroupToggle(Turb)] _Turb_MainTex_ON ("Turb_MainTex_ON", Float) = 0
		[GroupToggle(Turb)] _Turb_Noise_Polar_ON ("Turb_Noise_Polar_ON", Float) = 0
		[GroupItem(Turb)] _Turb_Main_Value ("Turb_Main_Value", Float) = 0
		[GroupItem(Turb)] _Turb_Diss_Value ("Turb_Diss_Value", Float) = 0
		[GroupItem(Turb)] _Turb_RempTex_Value ("Turb_RempTex_Value", Float) = 0
		[GroupItem(Turb)] _Turb_Mask_Value ("Turb_Mask_Value", Float) = 0
		[GroupItem(Turb)] _Turb_Tex_UV ("Turb_Tex_UV", Vector) = (0,0,0,0)
		[HideInInspector] _MainTex ("MainTex", 2D) = "white" {}
		[Header(Stencil State)] [IntRange] _StencilRef ("Stencil Reference Value", Range(0, 255)) = 0
		[Enum(UnityEngine.Rendering.CompareFunction)] _StencilTest ("StencilTest", Float) = 0
		[Enum(UnityEngine.Rendering.StencilOp)] _StencilOp ("StencilOp", Float) = 0
		_StencilComp ("Stencil Comparison", Float) = 8
		_Stencil ("Stencil ID", Float) = 0
		_StencilOp ("Stencil Operation", Float) = 0
		_StencilWriteMask ("Stencil Write Mask", Float) = 255
		_StencilReadMask ("Stencil Read Mask", Float) = 255
		_ColorMask ("Color Mask", Float) = 15
	}
	//DummyShaderTextExporter
	SubShader{
		Tags { "RenderType"="Opaque" }
		LOD 200

		Pass
		{
			HLSLPROGRAM
			#pragma vertex vert
			#pragma fragment frag

			float4x4 unity_ObjectToWorld;
			float4x4 unity_MatrixVP;
			float4 _MainTex_ST;

			struct Vertex_Stage_Input
			{
				float4 pos : POSITION;
				float2 uv : TEXCOORD0;
			};

			struct Vertex_Stage_Output
			{
				float2 uv : TEXCOORD0;
				float4 pos : SV_POSITION;
			};

			Vertex_Stage_Output vert(Vertex_Stage_Input input)
			{
				Vertex_Stage_Output output;
				output.uv = (input.uv.xy * _MainTex_ST.xy) + _MainTex_ST.zw;
				output.pos = mul(unity_MatrixVP, mul(unity_ObjectToWorld, input.pos));
				return output;
			}

			Texture2D<float4> _MainTex;
			SamplerState sampler_MainTex;

			struct Fragment_Stage_Input
			{
				float2 uv : TEXCOORD0;
			};

			float4 frag(Fragment_Stage_Input input) : SV_TARGET
			{
				return _MainTex.Sample(sampler_MainTex, input.uv.xy);
			}

			ENDHLSL
		}
	}
	Fallback "Hidden/InternalErrorShader"
}